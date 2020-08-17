# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@category1 = Category.create(name:"レディース")

  category1s =[
                {level2:"トップス",level2_children:["Tシャツ/カットソー(半袖/袖なし)","Tシャツ/カットソー(七分/長袖)",
                "シャツ/ブラウス(半袖/袖なし)","シャツ/ブラウス(七分/長袖)","ポロシャツ","キャミソール","タンクトップ","ホルターネック",
                "ニット/セーター","チュニック","カーディガン/ボレロ","アンサンブル","ベスト/ジレ","パーカー","トレーナー/スウェット",
                "ベアトップ/チューブトップ","ジャージ","その他"]},
                {level2:"ジャケット/アウター",level2_children:["テーラードジャケット","ノーカラージャケット","Gジャン/デニムジャケット",
                "レザージャケット","ダウンジャケット","ライダースジャケット","ミリタリージャケット","ダウンベスト","ジャンパー/ブルゾン",
                "ポンチョ","ロングコート","トレンチコート","ダッフルコート","ピーコート","チェスターコート","モッズコート","スタジャン",
                "毛皮/ファーコート","スプリングコート","スカジャン","その他"]},
                {level2:"パンツ",level2_children:["デニム/ジーンズ","ショートパンツ","カジュアルパンツ","ハーフパンツ","チノパン",
                "ワークパンツ/カーゴパンツ","クロップドパンツ","サロペット/オーバーオール","オールインワン","サルエルパンツ",
                "ガウチョパンツ","その他"]},
                {level2:"スカート",level2_children:["ミニスカート","ひざ丈スカート","ロングスカート","キュロット","その他"]},
                {level2:"ワンピース",level2_children:["ミニワンピース","ひざ丈ワンピース","ロングワンピース","その他"]},
                {level2:"靴",level2_children:["ハイヒール/パンプス","ブーツ","サンダル","スニーカー","ミュール","モカシン",
                "ローファー／革靴","フラットシューズ/バレエシューズ","長靴/レインシューズ","その他"]},
                {level2:"ルームウェア/パジャマ",level2_children:["パジャマ","ルームウェア"]},
                {level2:"レッグウェア",level2_children:["ソックス","スパッツ/レギンス","ストッキング/タイツ",
                "レッグウォーマー","その他"]},
                {level2:"帽子",level2_children:["ニットキャップ/ビーニー","ハット","ハンチング/ベレー帽","キャップ","キャスケット",
                "麦わら帽子","その他"]},
                {level2:"バッグ",level2_children:["ハンドバッグ","トートバッグ","エコバッグ","リュック/バックパック","ボストンバッグ",
                "スポーツバッグ","ショルダーバッグ","クラッチバッグ","ポーチ/バニティ","ボディバッグ/ウェストバッグ","マザーズバッグ",
                "メッセンジャーバッグ","ビジネスバッグ","旅行用バッグ/キャリーバッグ","ショップ袋","和装用バッグ","かごバッグ","その他"]},
                {level2:"アクセサリー",level2_children:["ネックレス","ブレスレット","バングル/リストバンド","リング",
                "ピアス(片耳用)","ピアス(両耳用)","イヤリング","アンクレット","ブローチ/コサージュ","チャーム","その他"]},
                {level2:"ヘアアクセサリー",level2_children:["ヘアゴム/シュシュ","ヘアバンド/カチューシャ","ヘアピン","その他"]},
                {level2:"小物",level2_children:["長財布","折り財布","コインケース/小銭入れ","名刺入れ/定期入れ","キーケース",
                "キーホルダー","手袋/アームカバー","ハンカチ","ベルト","マフラー/ショール","ストール/スヌード","バンダナ/スカーフ",
                "ネックウォーマー","サスペンダー","サングラス/メガネ","モバイルケース/カバー","手帳","イヤマフラー","傘",
                "レインコート/ポンチョ","ミラー","タバコグッズ","その他"]},
                {level2:"時計",level2_children:["腕時計(アナログ)","腕時計(デジタル)","ラバーベルト","レザーベルト","金属ベルト",
                "その他"]},
                {level2:"ウィッグ/エクステ",level2_children:["前髪ウィッグ","ロングストレート","ロングカール","ショートストレート",
                "ショートカール","その他"]},
                {level2:"浴衣/水着",level2_children:["浴衣","着物","振袖","長襦袢/半襦袢","水着セパレート","水着ワンピース",
                "水着スポーツ用","その他"]},
                {level2:"スーツ/フォーマル/ドレス",level2_children:["スカートスーツ上下","パンツスーツ上下","ドレス","パーティーバッグ",
                "シューズ","ウェディング","その他"]},
                {level2:"マタニティ",level2_children:["トップス","アウター","インナー","ワンピース","パンツ/スパッツ","スカート",
                "パジャマ","授乳服","その他"]},
                {level2:"その他",level2_children:["コスプレ","下着","その他"]}
              ]

  category1s.each.with_index(1) do |category1,i|
    level2_var="@category1_#{i}"
    level2_val= @category1.children.create(name:"#{category1[:level2]}")
    eval("#{level2_var} = level2_val")
    category1[:level2_children].each do |level2_children_val|
      eval("#{level2_var}.children.create(name:level2_children_val)")
    end
  end

@category2 = Category.create(name:"メンズ")

  category2s =[
                {level2:"トップス",level2_children:["Tシャツ/カットソー(半袖/袖なし)","Tシャツ/カットソー(七分/長袖)","シャツ",
                "ポロシャツ","タンクトップ","ニット/セーター","パーカー","カーディガン","スウェット","ジャージ","ベスト","その他"]},
                {level2:"ジャケット/アウター",level2_children:["テーラードジャケット","ノーカラージャケット","Gジャン/デニムジャケット",
                "レザージャケット","ダウンジャケット","ライダースジャケット","ミリタリージャケット","ナイロンジャケット",
                "フライトジャケット","ダッフルコート","ピーコート","ステンカラーコート","トレンチコート","モッズコート","チェスターコート",
                "スタジャン","スカジャン","ブルゾン","マウンテンパーカー","ダウンベスト","ポンチョ","カバーオール","その他"]},
                {level2:"パンツ",level2_children:["デニム/ジーンズ","ワークパンツ/カーゴパンツ","スラックス","チノパン",
                "ショートパンツ","ペインターパンツ","サルエルパンツ","オーバーオール","その他"]},
                {level2:"靴",level2_children:["スニーカー","サンダル","ブーツ","モカシン","ドレス/ビジネス","長靴/レインシューズ",
                "デッキシューズ","その他"]},
                {level2:"バッグ",level2_children:["ショルダーバッグ","トートバッグ","リュック/バックパック","ボストンバッグ",
                "ウエストポーチ","ボディーバッグ","ドラムバッグ","ビジネスバッグ","トラベルバッグ","メッセンジャーバッグ",
                "エコバッグ","その他"]},
                {level2:"スーツ",level2_children:["スーツジャケット","スーツベスト","スラックス","セットアップ","その他"]},
                {level2:"帽子",level2_children:["キャップ","ハット","ニットキャップ/ビーニー","ハンチング/ベレー帽",
                "キャスケット","サンバイザー","その他"]},
                {level2:"アクセサリー",level2_children:["ネックレス","ブレスレット","バングル/リストバンド","リング",
                "ピアス(片耳用)","ピアス(両耳用)","アンクレット","その他"]},
                {level2:"小物",level2_children:["長財布","折り財布","マネークリップ","コインケース/小銭入れ",
                "名刺入れ/定期入れ","キーケース","キーホルダー","ネクタイ","手袋","ハンカチ","ベルト","マフラー","ストール",
                "バンダナ","ネックウォーマー","サスペンダー","ウォレットチェーン","サングラス/メガネ","モバイルケース/カバー",
                "手帳","ストラップ","ネクタイピン","カフリンクス","イヤマフラー","傘","レインコート","ミラー",
                "タバコグッズ","その他"]},
                {level2:"時計",level2_children:["腕時計(アナログ)","腕時計(デジタル)","ラバーベルト","レザーベルト",
                "金属ベルト","その他"]},
                {level2:"水着",level2_children:["一般水着","スポーツ用","アクセサリー","その他"]},
                {level2:"レッグウェア",level2_children:["ソックス","レギンス/スパッツ","レッグウォーマー","その他"]},
                {level2:"アンダーウェア",level2_children:["トランクス","ボクサーパンツ","その他"]},
                {level2:"その他"},
              ]
  category2s.each.with_index(1) do |category2,i|
    level2_var="@category2_#{i}"
    level2_val= @category2.children.create(name:"#{category2[:level2]}")
    eval("#{level2_var} = level2_val")
    category2[:level2_children].each do |level2_children_val|
      eval("#{level2_var}.children.create(name:level2_children_val)")
    end
  end

# category3 = Category.create(name:"ベビー・キッズ")
# category4 = Category.create(name:"インテリア・住まい・小物")
# category5 = Category.create(name:"本・音楽・ゲーム")
# category6 = Category.create(name:"おもちゃ・ホビーグッズ")
# category7 = Category.create(name:"コスメ・香水・美容")
# category8 = Category.create(name:"家電・スマホ・カメラ")
# category9 = Category.create(name:"スポーツ・レジャー")
# category10 = Category.create(name:"ハンドメイド")
# category11 = Category.create(name:"チケット")
# category12 = Category.create(name:"自動車・オートバイ")
# category13 = Category.create(name:"その他")