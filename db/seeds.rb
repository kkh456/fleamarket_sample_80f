# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
@category1 = Category.create(name:"---")

@category2 = Category.create(name:"レディース")

  category2s =[
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

category2s.each.with_index(1) do |category2,i|
  level2_var="@category2_#{i}"
  level2_val= @category2.children.create(name:"#{category2[:level2]}")
  eval("#{level2_var} = level2_val")
  category2[:level2_children].each do |level2_children_val|
    eval("#{level2_var}.children.create(name:level2_children_val)")
  end
end

@category3 = Category.create(name:"メンズ")

  category3s =[
                {level2:"トップス",level2_children:["Tシャツ/カットソー(半袖/袖なし)","Tシャツ/カットソー(七分/長袖)",
                "シャツ","ポロシャツ","タンクトップ",
                "ニット/セーター","パーカー","カーディガン","スウェット","ジャージ","ベスト","その他"]},
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
                {level2:"時計",level2_children:["腕時計(アナログ)","腕時計(デジタル)","ラバーベルト","レザーベルト","金属ベルト",
                "その他"]},
                {level2:"水着",level2_children:["一般水着","スポーツ用","アクセサリー","その他"]},
                {level2:"レッグウェア",level2_children:["ソックス","レギンス/スパッツ","レッグウォーマー","その他"]},
                {level2:"アンダーウェア",level2_children:["トランクス","ボクサーパンツ","その他"]},
                {level2:"その他",level2_children:["コスプレ","下着","その他"]}
              ]
  category3s.each.with_index(1) do |category3,i|

    level2_var="@category3_#{i}"
    level2_val= @category3.children.create(name:"#{category3[:level2]}")
    eval("#{level2_var} = level2_val")
    category3[:level2_children].each do |level2_children_val|
      eval("#{level2_var}.children.create(name:level2_children_val)")
    end
  end
  

@category4 = Category.create(name:"ベビー・キッズ")

  category4s =[
                {level2:"ベビー服(女の子用)~95cm", level2_children:["トップス","アウター","パンツ","スカート",
                "ワンピース","ベビードレス","おくるみ","下着/肌着","パジャマ","ロンパース","その他"]},
                {level2:"ベビー服(男の子用)~95cm", level2_children:["トップス","アウター","パンツ",
                "おくるみ","下着/肌着","パジャマ","ロンパース","その他"]},
                {level2:"ベビー服(男女兼用)~95cm", level2_children:["トップス","アウター","パンツ",
                "おくるみ","下着/肌着","パジャマ","ロンパース","その他"]},
                {level2:"キッズ服(女の子用)100cm~", level2_children:["コート","ジャケット/上着",
                "トップス(Tシャツ/カットソー)","トップス(トレーナー)","トップス(チュニック)","トップス(タンクトップ)",
                "トップス(その他)","スカート","パンツ","ワンピース","セットアップ","パジャマ","フォーマル/ドレス",
                "和服","浴衣","甚平","水着","その他"]},
                {level2:"キッズ服(男の子用)100cm~", level2_children:["コート","ジャケット/上着",
                "トップス(Tシャツ/カットソー)","トップス(トレーナー)","トップス(その他)","パンツ","セットアップ",
                "パジャマ","フォーマル/ドレス","和服","浴衣","甚平","水着","その他"]},
                {level2:"キッズ服(男女兼用)100cm~", level2_children:["コート","ジャケット/上着",
                "トップス(Tシャツ/カットソー)","トップス(トレーナー)","トップス(その他)","ボトムス","パジャマ","その他"]},
                {level2:"キッズ靴", level2_children:["スニーカー","サンダル","ブーツ","長靴","その他"]},
                {level2:"子ども用ファッション小物", level2_children:["靴下/スパッツ","帽子","エプロン",
                "サスペンダー","タイツ","ハンカチ","バンダナ","ベルト","マフラー","傘","手袋","スタイ","バッグ","その他"]},
                {level2:"おむつ/トイレ/バス", level2_children:["おむつ用品","おまる/補助便座","トレーニングパンツ",
                "ベビーバス","お風呂用品","その他"]},
                {level2:"外出/移動用品", level2_children:["ベビーカー","抱っこひも/スリング",
                "チャイルドシート","その他"]},
                {level2:"授乳/食事", level2_children:["ミルク","ベビーフード","ベビー用食器","その他"]},
                {level2:"ベビー家具/寝具/室内用品", level2_children:["ベッド","布団/毛布","イス",
                "たんす","その他"]},
                {level2:"おもちゃ", level2_children:["おふろのおもちゃ","がらがら","オルゴール",
                "ベビージム","手押し車/カタカタ","知育玩具","その他"]},
                {level2:"行事/記念品", level2_children:["お宮参り用品","お食い初め用品","アルバム",
                "手形/足形","その他"]},
                {level2:"その他", level2_children:["母子手帳用品","その他"]}
              ]
  category4s.each.with_index(1) do |category4,i|

    level2_var="@category4_#{i}"
    level2_val= @category4.children.create(name:"#{category4[:level2]}")
    eval("#{level2_var} = level2_val")
    category4[:level2_children].each do |level2_children_val|
      eval("#{level2_var}.children.create(name:level2_children_val)")
    end
  end

@category5 = Category.create(name:"インテリア・住まい・小物")

  category5s =[
                {level2:"キッチン/食器", level2_children:["食器","調理器具","収納/キッチン雑貨","弁当用品",
                "カトラリー(スプーン等)","テーブル用品","容器","エプロン","アルコールグッズ","浄水機","その他"]},
                {level2:"ベッド/マットレス", level2_children:["セミシングルベッド","シングルベッド",
                "セミダブルベッド","ダブルベッド","ワイドダブルベッド","クイーンベッド","キングベッド",
                "脚付きマットレスベッド","マットレス","すのこベッド","ロフトベッド/システムベッド",
                "簡易ベッド/折りたたみベッド","収納付き","その他"]},
                {level2:"ソファ/ソファベッド", level2_children:["ソファセット","シングルソファ","ラブソファ",
                "トリプルソファ","オットマン","コーナーソファ","ビーンズソファ/クッションソファ",
                "ローソファ/フロアソファ","ソファベッド","応援セット","ソファカバー","リクライニングソファ","その他"]},
                {level2:"椅子/チェア", level2_children:["一般","スツール","ダイニングチェア",
                "ハイバックチェア","ロッキングチェア","座椅子","折り畳みイス","デスクチェア","その他"]},
                {level2:"机/テーブル", level2_children:["こたつ","カウンターテーブル","サイドテーブル",
                "センターテーブル","ダイニングテーブル","座卓/ちゃぶ台","アウトドア用","パソコン用",
                "事務机/学習机","その他"]},
                {level2:"収納家具", level2_children:["リビング収納","キッチン収納","玄関/屋外収納",
                "バス/トイレ収納","本収納","本/CD/DVD収納","洋服タンス/押入れ収納","電話台/ファックス台",
                "ドレッサー/鏡台","棚/ラック","ケース/ボックス","その他"]},
                {level2:"ラグ/カーペット/マット", level2_children:["ラグ","カーペット","ホットカーペット",
                "玄関/キッチンマット","トイレ/バスマット","その他"]},
                {level2:"カーテン/ブラインド", level2_children:["カーテン","ブラインド","ロールスクリーン",
                "のれん","その他"]},
                {level2:"ライト/照明", level2_children:["蛍光灯/電球","天井照明","フロアスタンド","その他"]},
                {level2:"寝具", level2_children:["布団/毛布","枕","シーツ/カバー","その他"]},
                {level2:"インテリア/小物", level2_children:["クッションカバー","スリッパラック",
                "ティッシュボックス","バスケット/かご","フォトフレーム","マガジンラック","モビール","花瓶",
                "灰皿","傘立て","小物入れ","置時計","掛時計/柱時計","鏡","置物","風鈴","植物/観葉植物","その他"]},
                {level2:"季節/年中行事", level2_children:["正月","成人式","バレンタインデー","ひな祭り",
                "こどもの日","母の日","父の日","サマーギフト/お中元","夏/夏休み","ハロウィン","敬老の日",
                "七五三","お歳暮","クリスマス","冬一般","その他"]},
                {level2:"その他", level2_children:["キッチン/食器","ベッド/マットレス","ソファ/ソファベッド",
                "椅子","机","収納家具","ラグ/カーペット/マット","カーテン/ブラインド","照明","寝具",
                "インテリア小物","季節/年中行事","その他"]}
              ]
  category5s.each.with_index(1) do |category5,i|
    level2_var="@category5_#{i}"
    level2_val= @category5.children.create(name:"#{category5[:level2]}")
    eval("#{level2_var} = level2_val")
    category5[:level2_children].each do |level2_children_val|
      eval("#{level2_var}.children.create(name:level2_children_val)")
    end
  end

@category6 = Category.create(name:"本・音楽・ゲーム")

  category6s =[
                {level2:"本", level2_children:["文学/小説","人文/社会","ノンフィクション/教養","地図/旅行/ガイド",
                "ビジネス/経済","健康/医学","コンピュータ/IT","趣味/スポーツ/実用","住まい/暮らし/子育て",
                "アート/エンタメ","洋書","絵本","参考書","その他"]},
                {level2:"漫画", level2_children:["全巻セット","少年","少女","青年","女性","同人誌","その他"]},
                {level2:"雑誌", level2_children:["アート/エンタメ/ホビー","ファッション","ニュース/総合",
                "趣味/スポーツ","その他"]},
                {level2:"CD", level2_children:["外国映画","日本映画","アニメ","TVドラマ","ミュージック",
                "お笑い/バラエティ","スポーツ/フィットネス","キッズ/ファミリー","その他"]},
                {level2:"レコード", level2_children:["邦楽","洋楽","その他"]},
                {level2:"テレビゲーム", level2_children:["家庭用ゲーム本体","家庭用ゲームソフト",
                "携帯用ゲーム本体","携帯用ゲームソフト","PCゲーム","その他"]}
              ]

  category6s.each.with_index(1) do |category6,i|
    level2_var="@category6_#{i}"
    level2_val= @category6.children.create(name:"#{category6[:level2]}")
    eval("#{level2_var} = level2_val")
    category6[:level2_children].each do |level2_children_val|
      eval("#{level2_var}.children.create(name:level2_children_val)")
    end
  end

# @category7 = Category.create(name:"おもちゃ・ホビーグッズ")
# @category8 = Category.create(name:"コスメ・香水・美容")
# @category9 = Category.create(name:"家電・スマホ・カメラ")
# @category10 = Category.create(name:"スポーツ・レジャー")
# @category11 = Category.create(name:"ハンドメイド")
# @category12 = Category.create(name:"チケット")
# @category13 = Category.create(name:"自動車・オートバイ")
# @category14 = Category.create(name:"その他")