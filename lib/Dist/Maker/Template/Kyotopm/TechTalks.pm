package Dist::Maker::Template::Kyotopm::TechTalks;
use utf8;
use Mouse;
use MouseX::StrictConstructor;

use Dist::Maker::Util qw(run_command);

extends 'Dist::Maker::Base';
with    'Dist::Maker::Template';

sub dist_init {
}

sub distribution {
    # empty expression <: :> is used
    # in order to avoid to confuse PAUSE indexers
    return <<'DIST';
@@ blog.txt
<: $event_name :>を開催しようと思います！

<center>
  <a class="btn btn-register btn-large" href="<: $event_url :>" target="_blank"><: $event_name :>に参加する</a>
</center>

イベントの詳細は以下の通りです。
- 日時 : <: $date :>
- 場所 : 株式会社はてな 8F(http://www.hatena.ne.jp/company/location)
- 参加費 : <: $fee :>
- 懇親会 : <: $party_description :>

参加は以下のボタンからZusaarで登録をお願いします。また発表者も募集しています！Zusaarのページのコメント欄に発表内容を書いていただくか、[https://twitter.com/shiba_yu36:title=@shiba_yu36]までご連絡ください。

<center>
  <a class="btn btn-register btn-large" href="<: $event_url :>" target="_blank">Kyoto.pm 05 Tech Talkに参加する</a>
</center>

@@ it-calendar.txt
To: hanazukin+IT＠gmail.com
Subject: IT勉強カレンダー掲載に関して

こんにちは、Kyoto.pmという勉強会を開催している@shiba_yu36と申します。IT勉強会カレンダーに掲載をお願いしたいです。

1.勉強会/イベント名
<: $event_name :>
Perlに関する勉強会です。

2.開催日時
<: $date :>

3.開催場所
株式会社はてな
http://www.hatena.ne.jp/company/location

4.情報が掲載されているURL
<: $event_url :>

よろしくお願いします。

@@ todo.txt
# 参加受付前に

- [ ] 日程を決める
- [ ] 場所を押さえる
- [ ] 参加人数を決める
- [ ] スケジュールを決める
- [ ] 懇親会の場所を決める

# 参加受付

- [ ] Zusaarとかで参加受付をする(発表者、懇親会も)
- [ ] 自分のブログで周知
- [ ] Kyoto.pmブログで周知
- [ ] IT勉強会カレンダー
- [ ] Facebookグループで周知
- [ ] メーリスで周知
- [ ] いろいろ参加者に声掛け

# 実施前

- [ ] ustream準備
- [ ] 当日のお酒買う人頼む
- [ ] 当日の受付頼む
- [ ] 会場説明などのスライド作成
  - スケジュール
  - 会場説明(お手洗い、ネットワーク、喫煙所、飲み物)
  - ustreamの説明(止めたい時は言ってください)
- [ ] 懇親会人数の確認
- [ ] 参加者リストの出力

# 当日
## 受付

- [ ] 名前確認
- [ ] 懇親会出席確認
- [ ] お金もらう(参加費 + 懇親会費)

# 開催後

- [ ] kyotopmブログでレポート
- [ ] 可能なら動画をyoutubeにあげたい
- [ ] JPAに講師派遣を依頼している時は振込

@@ zusaar.txt
　<: $event_name :>を開催します。発表会形式の勉強会です。詳細は以下のとおりです。
・日時 : <: $date :>
・場所 : 株式会社はてな 御池ビル 8F http://www.hatena.ne.jp/company/location
・参加費 : <: $fee :>
・懇親会 : <: $party_description :>

発表者募集
発表者も現在募集中です！通常トークとLTを両方募集しています。発表はPerlに関係するものであればどんなものでも構いません。
発表を希望している方は以下の内容をこのイベントのコメントに記入してください。
・通常かLTか
・発表タイトル
・発表に要する時間(通常は10,15,20,25,30,35,40のどれか、LTなら3もしくは5分)
・発表者のtwitterID
・その他

スケジュール
14:30              開場
15:00              会場説明
15:10 - 18:00      発表
18:00 -            懇親会

発表
・
・
・
・
・
・
・

LT
・

懇親会
18:00から懇親会をやる予定です。費用は<: $party_fee :>で、その場所でピザなどを頼むか、どこかの店に行こうと思っています。参加される方はアンケートで参加をチェックしてください。

会場説明
株式会社はてなのセミナールームを使います。
電源、無線LANなど揃っています。畳もあります。

Kyoto.pmについて
Kyoto.pmは現在@shiba_yu36が運営しています。一緒に運営していただける方はmentionなど飛ばしてください。
メーリスやコミュニティなどは以下。

・Blog : http://kyoto.pm.org/, http://shibayu36.hatenablog.com/
・IRC : #kyoto.pm@chat.freenode.net
・ML : https://groups.google.com/group/kyotopm
・Facebook : https://www.facebook.com/groups/164850510298765/


DIST
}

no Mouse;
__PACKAGE__->meta->make_immutable();
