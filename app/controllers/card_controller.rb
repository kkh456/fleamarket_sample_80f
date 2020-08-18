class CardController < ApplicationController

  require "payjp"
  before_action :set_card

  def index
    @products = Product.all
    @images = Image.all
    @addresses = Address.all
    @users = User.all
    @product = Product.find(params[:format])
    @address = Address.find(params[:format])
    @product = Product.find(params[:format])
    @user = User.find(params[:format])
    #product = Product.find(params[:product_format])
    # すでにクレジットカードが登録しているか？
    if @card.present?
      # 登録している場合,PAY.JPからカード情報を取得する
      # PAY.JPの秘密鍵をセットする。
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      # PAY.JPから顧客情報を取得する。
      customer = Payjp::Customer.retrieve(@card.payjp_id)
      # PAY.JPの顧客情報から、デフォルトで使うクレジットカードを取得する。
      @card_info = customer.cards.retrieve(customer.default_card)
      # クレジットカード情報から表示させたい情報を定義する。
      # クレジットカードの画像を表示するために、カード会社を取得
      @card_brand = @card_info.brand
      # クレジットカードの有効期限を取得
      @exp_month = @card_info.exp_month.to_s
      @exp_year = @card_info.exp_year.to_s.slice(2,3)
    end
  end

  def new
    @product = Product.new
    @product.images.build
  end

  def show
    
  end

  def edit
  end

  def new
    # cardがすでに登録済みの場合、indexのページに戻します。
    @card = Card.where(user_id: current_user.id).first
    redirect_to action: "index" if @card.present?
  end

  def create
    # PAY.JPの秘密鍵をセット（環境変数）
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    # jsで作成したpayjpTokenがちゃんと入っているか？
    if params['payjpToken'].blank?
      # トークンが空なら戻す
      render "new"
    else
      # トークンがちゃんとあれば進めて、PAY.JPに登録されるユーザーを作成します。
      customer = Payjp::Customer.create(
        description: 'test',
        card: params['payjpToken'],
        metadata: {user_id: current_user.id}
      )
      # PAY.JPのユーザーが作成できたので、creditcardモデルを登録します。
      @card = Card.new(user_id: current_user.id, payjp_id: customer.id)
      if @card.save
        redirect_to action: "show", notice:"支払い情報の登録が完了しました"
      else
        render 'new'
      end
    end
  end

  def destroy
    # 今回はクレジットカードを削除するだけでなく、PAY.JPの顧客情報も削除する。これによりcreateメソッドが複雑にならない。
    # PAY.JPの秘密鍵をセットして、PAY.JPから情報をする。
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    # PAY.JPの顧客情報を取得
    customer = Payjp::Customer.retrieve(@card.payjp_id)
    customer.delete # PAY.JPの顧客情報を削除
    if @card.destroy # App上でもクレジットカードを削除
      redirect_to action: "index", notice: "削除しました"
    else
      redirect_to action: "index", alert: "削除できませんでした"
    end
  end

  def buy
    @product = Product.find(params[:id])
    # すでに購入されていないか？
    if @product.status.blank?
      redirect_back(fallback_location: root_path) 
    elsif @card.blank?
      # カード情報がなければ、買えないから戻す
      redirect_to action: "new"
      flash[:alert] = '購入にはクレジットカード登録が必要です'
    else
      # 購入者もいないし、クレジットカードもあるし、決済処理に移行
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      # 請求を発行
      Payjp::Charge.create(
      amount: @product.price,
      customer: @card.payjp_id,
      currency: 'jpy',
      )
      render :done and return
    end
      # 売り切れなので、productの情報をアップデートして売り切れにする画面 ビュー実装後コメントアウト外してください。
      # if @product.update(buyer_id: current_user.id)
      #   flash[:notice] = '購入しました。'
      #   redirect_to controller: 'products', action: 'show', id: @product.id
      # else
      #   flash[:alert] = '購入に失敗しました。'
      #   redirect_to controller: 'products', action: 'show', id: @product.id
      # end
  end

    def done
    end
  end
  
  private
  def set_card
    @card = Card.where(user_id: current_user.id).first if Card.where(user_id: current_user.id).present?
  end

