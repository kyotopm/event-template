# How to make event template
## Make configuration
First, make configuration for this event.  For example,
```Perl
# config/tech-talk-05.pl
+{
    event_name        => 'Kyoto.pm 05 Tech Talk',
    event_url         => 'http://www.zusaar.com/event/843003',
    date              => '2013/7/13(土) 15:00-',
    fee               => '500-1000円',
    party_description => 'その場でかどこかに行きます(2000円-4000円)',
    party_fee         => '2000-4000円',
    schedule => <<'SCHEDULE',
14:30              開場
15:00              会場説明
15:10 - 18:00      発表
18:00 -            懇親会
SCHEDULE
}
```

## Generate event template
Second, generate event template using following command.  First argument is the name of configuration file without extension.
```Perl
$ script/make-event.pl tech-talk-05
```

## Event template generated
```
$ tree events/tech-talk-05
events/tech-talk-05
├── blog.txt
├── facebook.txt
├── it-calendar.txt
├── todo.txt
└── zusaar.txt
```