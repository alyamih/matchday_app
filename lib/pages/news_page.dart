import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matchday_app/model/news_item.dart';
import 'package:matchday_app/pages/description_news_page.dart';
import 'package:matchday_app/widgets/bottom_bar.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<NewsItem> newsList = [
    NewsItem(
      date: '23 April, 2024',
      title:
          'Liverpool interested in appointing Feyenoord’s Arne Slot as new manager',
      text:
          'Liverpool are interested in appointing Feyenoord’s Arne Slot as their new manager this summer.Slot has emerged as a strong candidate to succeed Jürgen Klopp in the recruitment process being led by Michael Edwards, the new chief executive officer of football for Fenway Sports Group, and incoming sporting director Richard Hughes. Liverpool have been sounding out potential new managers through intermediaries rather than direct interviews but Slot is among the frontrunners for the position. The 45-year-old has enjoyed consistent success with Feyenoord since replacing Dick Advocaat in 2021, and at AZ before that. He led the Rotterdam club to the inaugural Europa Conference League final in his first season, when they finished third in Eredivisie, won the league title in his second season and lifted this season’s KNVB Cup on Sunday with a 1-0 victory over NEC Nijmegen. Slot’s achievements on a relatively modest budget and aggressive playing style has attracted widespread interest, including from Tottenham last season, and Liverpool could face competition from Barcelona, Bayern Munich and Milan for his services this summer, when he will have two years remaining on the contract he extended with Feyenoord last May.',
      image:
          'https://img.freepik.com/free-photo/success-grass-soccer-ball-generated-by-ai_188544-9819.jpg?size=626&ext=jpg&ga=GA1.1.553209589.1713830400&semt=ais',
    ),
    NewsItem(
      date: '23 April, 2024',
      title:
          'Kia Joorabchian ‘accosted’ by debt collectors working for agent Saif Alrubie, court told',
      text:
          'One of the Premier League’s best known football agents was confronted by about 12 debt collectors at his office – and separately relieved of his expensive watch at a restaurant – as part of an effort to pressure him into repaying money, Southwark crown court has heard. Kia Joorabchian - whose footballer clients have included Carlos Tevez, Javier Mascherano and Philippe Coutinho - was “accosted” by associates of another agent, Saif Alrubie, as part of efforts to “intimidate him into handing over bundles of cash”, the jury was told. The supposed incident was relayed to the court as Alrubie stood trial trial for a separate alleged threat, which has resulted in him being charged with sending an “electronic communication with intent to cause distress or anxiety” to Marina Granovskaia, Chelsea’s director of football when the club was owned by the Russian oligarch Roman Abramovich. The message to Granovskaia was sent as Alrubie chased payment for what he claims was his role in the transfer of France defender Kurt Zouma from Chelsea to West Ham United in 2021 – a deal for which he says he was owed about £300,000 in fees. On 22 May 2022, Alrubie sent an email chasing Granovskaia for payment, which appeared to also reference the Joorabchian incident. The jury was told it read: “In summary, you owe me and my partners 300k which needs to get paid ASAP. If Chelsea don’t pay it then that debt will be on you to pay. I am done trying to be nice to you.” “I look forward to hearing from you on the above matters and hopefully have a swift solution to them otherwise I guess I will see you when I see you,” the message continued. “I’m sure you’ve heard the story about your other friend Kia when he owed me money for a year and how he ended up paying it. Wouldn’t want you to be in the same situation just because you have a personal issue with me.’’ When asked how the message made her feel, Granovskaia told the court: “Very uncomfortable would be an understatement. I felt threatened. Physically threatened.”',
      image:
          'https://cdn.britannica.com/51/190751-131-B431C216/soccer-ball-goal.jpg',
    ),
    NewsItem(
      date: '23 April, 2024',
      title: 'The harsh reality of ACL injuries outside elite women’s football',
      text:
          'For any player, the prospect of an anterior cruciate ligament (ACL) injury is incredibly daunting. The Arsenal winger Beth Mead described her experience as “mentally and physically gruelling,” while the England captain, Leah Williamson, doubted she would return from her own setback. Suffering an ACL injury means a prolonged period on the sidelines, usually between nine and 12 months. Professional players receive the best treatment to ensure they can return as soon as possible and without financial strain. But that isn’t the case for every player in England, especially female footballers playing outside the Women’s Super League and Championship. The Hashtag United winger Emma Samways, who plays in the third tier of English football, ruptured her ACL during a National League Cup semi-final against Halifax. It was an incident that put her life on pause. Having completed the five-hour coach trip from Essex to west Yorkshire, staying overnight at a nearby hotel, Samways and her teammates arrived at the Clayborn Ground to discover the pitch was almost unplayable. Within two minutes, Hashtag found themselves 1-0 up, but for Samways disaster struck in the second half. “I stood flat-footed and my boot got stuck in the mud with the ball coming towards me,” she says. “So I tried to flick it and as I twisted outwards I could hear a pop. I felt pain but I also just thought I could run it off, that it might be a twisted knee or a slight impact injury. Then every time I was blocking the ball my knee was all over the place.” Fear of an ACL injury didn’t cross Samways’ mind at first, but after a few minutes the winger knew something wasn’t right. “As soon as I came off, the physio was doing all the tests with me and I was fine,” she says. “I was performing, I could move, I could squat, there were no issues, I wasn’t even in pain. Then as I walked off I was limping a bit but I didn’t really think it was that bad. Usually people go down screaming.” While this was happening, just over 100 miles away, Newcastle United - who Hashtag would go on to face in the final - were hosting Portsmouth at St James’ Park. Over 22,300 fans watched the Magpies defeat Pompey on a pitch many would liken to a carpet - a stark contrast to the surface Samways and her teammates were playing on.',
      image:
          'https://i.guim.co.uk/img/media/72333ba3a2036588b8f9e0a007410ce64091b658/0_0_4200_2800/master/4200.jpg?width=1900&dpr=1&s=none',
    ),
    NewsItem(
      date: '23 April, 2024',
      title:
          'Inter could not have imagined a more satisfying way to win 20th Scudetto',
      text:
          'How else could it end but like this: tempers boiling over and the red card being shown to one player after another as Inter sealed their 20th league title with a win over neighbours Milan? Denzel Dumfries and Théo Hernández were first to be sent off after squaring up in midfield at the start of injury time. Milan’s Davide Calabria followed moments later for throwing a forearm into the face of Davide Frattesi at a corner. And then the final whistle went, transforming a ruck into revelry as the rest of Inter’s players and staff rushed from the dugout to join their colleagues on San Siro’s pitch. They carried giant Scudetto shields displaying the No 20 against the colours of the Italian flag. The two Milan clubs began this season tied on 19 league titles apiece. Now Inter will be the first to affix a second gold star to their club badge. They could scarcely have imagined a more satisfying way to earn it. Never before had a Serie A champion been crowned in a Milan derby, Inter blowing a previous opportunity when they lost 2-1 to their rivals in May 2008. On Monday, that scoreline was reversed, Francesco Acerbi and Marcus Thuram setting the Nerazzurri on their way before Fikayo Tomori’s 80th-minute header created a fraught finish. A Milan equaliser would only have delayed the inevitable. Inter’s title has effectively been sewn up ever since the 1-0 win over Juventus at the start of February that dispelled whatever magic had allowed Massimiliano Allegri’s modest team to keep pace. A one-point gap between those clubs became 20 over the next two months. Milan rose to second but, to borrow the framing that their former manager, Arrigo Sacchi, used after last season’s Champions League semi-final, they were a Fiat Cinquecento chasing a Ferrari. Despite retooling their engine over the summer, selling Sandro Tonali and deploying the profits as part of a more than €100m squad upgrade that included the signings of Christian Pulisic, Ruben Loftus-Cheek and Tijjani Reijnders, they could not get close to Inter.',
      image:
          'https://i.guim.co.uk/img/media/eebdbcefa4e3400cb40d0131fad587c4d576b08a/0_233_3500_2100/master/3500.jpg?width=1900&dpr=1&s=none',
    ),
    NewsItem(
      date: '23 April, 2024',
      title:
          'Barcelona threaten legal action over ‘phantom goal’ in defeat to Real Madrid',
      text:
          'Barcelona’s president, Joan Laporta, has threatened legal action and could demand a replay after his side were denied a goal against Real Madrid at the weekend. Lamine Yamal thought he had scored in the 28th minute of Sunday’s 3-2 clásico loss at the Bernabéu but the on-pitch officials did not rule the ball had crossed the line, and after a lengthy VAR check, their decision stood. La Liga does not use goalline technology. Laporta has requested footage and audio of the decision-making over this “phantom goal” incident from the Spanish Football Federation and will then consider further action. He said in a statement on the club’s official website: “If, once this documentation has been analysed, the club understands that an error was made in the revision of the incident, we will take all available measures to reverse the situation, without discounting, obviously, any necessary legal action. “If it is confirmed that it was a legal goal, we will move ahead and we do not discount requesting that the game be replayed, just as has happened in another game in Europe due to a VAR error.” Laporta was referring to a decision to replay a Belgian Pro League game between Anderlecht and Genk because of a VAR error earlier this season.',
      image:
          'https://i.guim.co.uk/img/media/45e11f5f6ce6da8ac2d3dc04aa7fa8a74f1174c8/0_400_6000_3600/master/6000.jpg?width=1900&dpr=1&s=none',
    ),
    NewsItem(
      date: '23 April, 2024',
      title:
          'Euro 2024 squads expanded to 26 players in boost to Gareth Southgate',
      text:
          'All teams will be allowed to select 26 players for this summer’s European ­Championship finals after Uefa agreed to an increase in the size of squads. A vote taken by the influential national competitions committee on Monday is understood to have approved a motion to maintain the 26-player limit introduced as an emergency measure for the Covid-disrupted tournament of 2021. Numbers were to be reduced to the traditional 23 for this summer in Germany but were resisted by a number of national coaches, including England’s Gareth Southgate. The proposal must now be signed off by Uefa’s executive, with the process possibly completed as early as this week. Southgate has previously spoken in favour of 26-player squads, feeling that the physical demands on his players during the league season will require that players’ minutes are managed during the tournament. Asked last month whether he supported the push to maintain an expanded squad list, England’s head coach said it would be a help “given where we are now”. England, he said, “have got to make the best decisions [regarding selection] with what we know and some of those currently are going to be medical decisions. We’ve been able to get those right in the previous [two] tournaments. We’ve been able to give people time [to recover, having named them in the squad]. But with 23 that’s definitely more difficult.” The referee teams for Euro 2024 have also been announced, with substantial representation for English officials. Michael Oliver and Anthony Taylor were selected among the 18 officials named by Uefa on Tuesday and will be accompanied by the assistant referees Stuart Burt, Dan Cook, Gary Beswick and Adam Nunn. Stuart Attwell and David Coote, meanwhile, are part of the VAR teams. As part of Uefa’s exchange programme with Conmebol, the Argentine referee Facundo Tello will officiate in Germany, but there is no place for Stéphanie Frappert, who made history by becoming t',
      image:
          'https://i.guim.co.uk/img/media/7521f6c8d7de2b04dacd8d922ae00bfba4e5316d/0_1_4917_2950/master/4917.jpg?width=1900&dpr=1&s=none',
    ),
    NewsItem(
      date: '23 April, 2024',
      title:
          'Alexander Isak repaying Eddie Howe’s faith as Newcastle target strong finish',
      text:
          'Alexander Isak was back on the pitch at St James’ Park last week, posing languidly alongside a Formula-E car as cameras whirred and a commercial film shoot began. Isak does languid very well, but that was not why Saudia, the national airline of Saudi Arabia and a key sponsor of both Newcastle United and Formula E, decided the club’s Sweden striker was the right choice to drape his rangy limbs over a cutting edge, all electric, racing car. After becoming the first Newcastle forward since Alan Shearer in 2003-04 to score more than 20 goals in all competitions in a top-flight campaign, the 24-year-old is hot property. Earlier this month, Tottenham’s Micky van de Ven arrived on Tyneside trailing a reputation as the Premier League’s quickest defender but the talented Dutchman was twice left on his backside as Isak demonstrated startling powers of acceleration from standing starts. If Eddie Howe’s team overcome an injury-jinxed season and qualify for the Europa League, their No 14 will merit considerable credit. Since returning to fitness following a nagging groin problem, Isak has scored 12 times in 15 appearances, registering seven in his past seven league appearances. It helps that a two-footed striker – albeit his right remains stronger – revels in scoring all types of goals while tempting defenders to dive in as he glides across the pitch, petrifying outpaced markers. During his time in charge of Bournemouth, Howe monitored the forward’s progress through Swedish youth football, so when Newcastle’s recruitment team presented him with a video of Isak in La Liga action for Real Sociedad they were preaching to the converted. So much so that, after 30 minutes’ viewing, Howe had seen enough and demanded his board did everything possible to sign a player capable of operating across the frontline as well as at No 10. In August 2022 the club agreed a £59m deal for the player. Newcastle’s manager was particularly impressed by Isak’s enthusiasm for pressing from the front. The Swede is a thoroughly modern striker who, quite apart from scoring twice in the 4-0 win over Tottenham at St James’ pressed assiduously, leaving Yves Bissouma in particular with precious little room for manoeuvre. “Alex is unselfish,” says Howe, who remains determined to resist interest in Isak from, among others, Arsenal and Paris Saint-Germain and retain a player with four years remaining on his contract. “He’s got the X-factor about him. But it’s not about him, it’s about the team. That’s rare.”',
      image:
          'https://i.guim.co.uk/img/media/1fb223be85844f0dda0dad836d090049bc0c171f/378_646_3477_2086/master/3477.jpg?width=1900&dpr=1&s=none',
    ),
    NewsItem(
      date: '23 April, 2024',
      title:
          'Mauricio Pochettino urges Chelsea to show they are not just ‘Cole Palmer FC’',
      text:
          'Mauricio Pochettino has challenged Chelsea to prove that they are not “Cole Palmer Football Club” should they have to take on Arsenal on Tuesday without their player of the season. Palmer, who has been Chelsea’s main source of goals and creativity since joining from Manchester City last September, is a doubt for the trip to the Emirates Stadium because of illness. But instead of worrying about whether his young side are capable of beating Arsenal without their best forward, Pochettino wants the rest of his players to show that they are not dependent on the 21-year-old. “It is a good challenge in case Palmer is not available,” Chelsea’s head coach said. “It’s a good challenge for the teammates. If I am a teammate of Cole Palmer in his position or a similar position, I am going to be motivated to go there tomorrow and show this is Chelsea Football Club, not Cole Palmer Football Club.” Palmer has left others in the shade for much of the campaign and there were hints of tension when Chelsea beat Everton 6-0 last week. Noni Madueke and Nicolas Jackson were criticised for trying to snatch a penalty off Palmer. But Pochettino denied that some of his players are jealous of Palmer’s success. “No, it is a good example for them – why is he doing so well and why are they not capable to do the same,” the Argentinian said. “It is a good challenge. They are not jealous. They only want the same pill we provide Palmer! It’s a joke! They ask, ‘What you are doing for Palmer, we want the same.’” Pochettino, whose side need to bounce back from their FA Cup semi-final defeat by Manchester City on Saturday, has not decided on who will take penalties if Palmer is out. “I will decide when I pick the starting XI but we have players like Noni Madueke, [Conor] Gallagher, [Enzo] Fernández or even Jackson that can shoot,” he said. “It will depend. Of course, there is [Mykhailo] Mudryk.”',
      image:
          'https://img.freepik.com/free-photo/success-grass-soccer-ball-generated-by-ai_188544-9819.jpg?size=626&ext=jpg&ga=GA1.1.553209589.1713830400&semt=ais',
    ),
    NewsItem(
      date: '23 April, 2024',
      title:
          'Aston Villa extend Unai Emery’s contract as European clubs circle',
      text:
          'Aston Villa have triggered the one-year option in Unai Emery’s contract to extend his stay until at least 2027, amid interest from Bayern Munich. Emery is on course to lead Villa into the Champions League and, after reaching the Europa Conference League semi-finals, he could deliver the club’s first major trophy since 1996. Villa host Olympiakos in the first leg of the Conference League semi-finals next month. After victory over Bournemouth on Sunday, Emery underlined his commitment to the club. “I am focused here, 100%,” he said. Emery has transformed Villa since succeeding Steven Gerrard 18 months ago – he led Villa to seventh last season and could guide them to a top-four finish this campaign. Villa are six points clear of fifth-placed Tottenham, albeit Spurs have two games in hand. Emery’s impressive work is thought to have piqued interest from not only Bayern but other clubs, including Barcelona. Since Emery’s appointment at Villa Park, only Manchester City, Arsenal and Liverpool have accumulated more Premier League points. Villa, who host Chelsea on Saturday hoping to tighten their grip on the top four, have in effect given Emery total autonomy as a reward for recasting the club’s fortunes.',
      image:
          'https://assets-global.website-files.com/5ca5fe687e34be0992df1fbe/6235ea7fbaf601e8d3980228_boy-kicking-ball-on-football-field-2021-09-24-03-47-56-utc-min-min.jpg',
    ),
    NewsItem(
      date: '23 April, 2024',
      title:
          'For Sheffield United and co the Premier League brings a unique brew of misery',
      text:
          'Same as it ever was. Yes, it’s time for one of English football’s familiar springtime rituals: arguing whether [club bottom of the Premier League] is the “worst Premier League team of all time”. This season the torchlight has fallen on poor, brittle Sheffield United, who could be relegated as early as this weekend if results go against them. And if we have learned anything over the last eight months, it is that “results going against them” has been the one reliable defining note to United’s season, a rock to cling to in uncertain times. Saturday’s 4-1 home defeat by Burnley felt like a watershed in this regard: not so much a downing of tools as a realisation that there are no tools, that the very existence of tools may have been a trick of the memory. Remarkably it was the first time Sheffield United had conceded four goals in a game all season; if, that is, you were prepared to disregard the 8-0, the 6-0 and the four 5-0s. The next goal they let in will bring them level with the infamous Derby County side of 2007-08, a team still regarded as the Rosetta Stone of Premier League awfulness, the foundational text by which all future pretenders are judged. Even with the worst will in the world, Sheffield United are nowhere near as bad as that. Indeed for all their defensive infelicities, a curious preference for letting corners bounce first before clearing them – you know, just in case – they are actually a pretty capable side on the ball: full of craft and invention, quick flurries and late goals. Transpose this team into, say, the 1993-94 Carling Premiership and they would be greeted like some superior alien life form: relentlessly fit, technically on a different plane, probably winning the league by eight points. Ben Brereton Díaz would be a Golden Boot contender. Gustavo Hamer would be snapped up by a Serie A giant within months. Ivo Grbic, to be fair, might still struggle. Not that this is really much consolation to fans of the 2023-24 iteration, still packing out Bramall Lane every week, steeling themselves for another afternoon of impotent rage. Doomed Premier League clubs seem to possess their own unique brew of misery, quite distinct from other forms of footballing bitterness: the condescension and the memes, the inevitability of that first goal, the faint souring of a once-fond dream.',
      image:
          'https://i.guim.co.uk/img/media/6b4e4210b5086860685812f5bcfb4e0762bb1a9b/0_306_4266_2560/master/4266.jpg?width=1900&dpr=1&s=none',
    ),
    NewsItem(
      date: '23 April, 2024',
      title:
          '‘Great things can happen’: Soaring Odisha FC seek new heights in ISL',
      text:
          'It was an unforgettable weekend for Raj Athwal. On Friday night, the only British chief executive of an Indian Super League (ISL) club, Odisha FC, watched them beat Kerala Blasters 2-1 to reach the last four of the Championship playoffs in the most dramatic fashion. On Sunday, he then saw his beloved Coventry City, where he worked for over a decade, lose to Manchester United in the FA Cup semi-finals in the narrowest fashion. Wembley outdid Kalinga Stadium in the drama and excitement stakes, but not by much. With three minutes remaining, Odisha were a goal down and a fine season was coming to an end. “My mind was in overdrive contemplating the busy pre-season ahead dealing with the owners, coach and other important activities,” said Athwal. “But then everything changed.” Diego Maurício equalised to take the game into extra time and then Isak Vanlalruatfela won it with a similarly well-worked goal. In the short term it means a first semi-final for the eastern Indian outfit – who became Odisha’s first professional club in 2019, five years after the ISL was formed – and a chance to become champions of India. If the Juggernauts are one of the newest teams in the world’s most populous country, then Tuesday’s opponents have a much longer history. Formed in 1889, Mohun Bagan have a huge fanbase in Kolkata and surrounding areas, with over 61,000 turning up for the last game of the regular season when they secured top spot. “They are massive but we are looking forward to it,” said Athwal, whose parents arrived in England from India in the 1960s. Athwal headed to south Asia after 25 years working on the commercial side with Coventry, Watford and Rangers. “I have tried to adopt a UK-European model of infrastructure on and off the pitch and there is a lot of hard work that goes behind the scenes, and we have changed structures,” he said. And it seems to be working. “Three years ago, we came bottom. Then we came mid-table and it was the playoffs last season.” There was also the 2023 Super Cup victory which resulted in qualification for Asia’s second tournament, the AFC Cup, and a place in the knockout stages.',
      image:
          'https://i.guim.co.uk/img/media/dcc7416c4b17a66bda74dc45f7137f67c706c4f6/0_69_2048_1229/master/2048.jpg?width=1900&dpr=1&s=none',
    ),
    NewsItem(
      date: '23 April, 2024',
      title:
          'Criminals and oligarchs in EU’s sights with new bill targeting football fraud',
      text:
          'Not for the first time in the history of the European parliament, it all started in Belgium. An investigation into alleged bribery, money-laundering, forged transfer contracts and the involvement of organised crime at the highest levels of professional football that began in 2018 eventually implicated almost 60 agents, administrators, referees and coaches. Known as Operation Clean Hands, the level of alleged corruption it uncovered not only led to the establishment of new strict financial regulations for clubs in Belgium but also opened eyes in the corridors of power in Brussels. In 2019, football was added to the European Union’s watchlist of money-laundering risks, with a United Nations report estimating that around \$140bn is laundered through the game every year. Yet while many leagues already have strict financial regulations aimed at preventing fraud, the French MEP, Damien Carême, believes the concern has been more focused on complying with financial fair play regulations than stopping corruption. “Criminals, oligarchs and the rich and powerful have privileged ways of laundering their dirty money, and football is one of them as experts assessments and scandals have shown time and again,” Carême told the Guardian. “What is more important: preventing corruption, tax fraud, trafficking of all kinds and the loss of confidence of citizens in their governments, or preserving the competitiveness of football clubs? For the European parliament, the choice was quickly made. “Can fans really enjoy the game when you know the money used to buy your favourite player comes from organised criminal groups proceeds or from a Russian oligarch who supports the war of aggression against Ukraine? I personally cannot.” On Wednesday, member states from the European parliament will vote to include the football industry in its sixth anti-money laundering directive. No late hiccups are expected and it will mean that, from 2029, most professional clubs and every agent within the European Union will be required to verify their customers’ identities, monitor transactions – including player transfers – and report suspicious transactions to their relevant Financial Intelligence Unit (FIU). Known as “obliged entities”, they will also be required to identify and publish beneficial owners who own at least 15% of the club in transparency registers and design and implement appropriate transaction monitoring procedures to identify suspicious transactions.',
      image:
          'https://i.guim.co.uk/img/media/949c38035bb56f6bf1e030709dd7d5d02423a01b/0_0_4919_2951/master/4919.jpg?width=1900&dpr=1&s=none',
    ),
    NewsItem(
      date: '23 April, 2024',
      title:
          '‘So much at stake’: Mikel Arteta backs Arsenal to dig deep before Chelsea clash',
      text:
          'Mikel Arteta has dismissed concerns about fatigue in his Arsenal squad and insisted that victory over Wolves has reinvigorated his players as they prepare to host Chelsea on Tuesday night. Arsenal, the league leaders, have the chance to move four points clear of Manchester City, with Pep Guardiola’s side not in action until Thursday evening against Brighton. Last week, Arteta said the scrapping of FA Cup replays was necessary to “protect our players” amid a gruelling season in which Arsenal reached the quarter-finals of the Champions League – where they went out against Bayern Munich – for the first time in 14 years. Bukayo Saka is set to make his 44th club appearance of the season on Tuesday, having also played eight times for England, while Declan Rice has started all but one of Arsenal’s league games this season. But Arteta is hoping the opportunity to win the club’s first league title for 20 years can galvanise his players into believing the old saying that tiredness is only in the mind. “There are a lot of studies that prove that. If you can change the context and manipulate certain things, you can get something out of ­people that probably you don’t expect,” Arteta said. “There is a lot around it. I don’t think we are in the stage where we need that, you can see that the team really wants it. There is so much at stake. We will try to be as fresh as possible but certainly I think we can cope with that. When I saw them this morning I had to stop them because winning is a big boost of energy. After winning against Wolves and having to play a London derby everyone is ready. We have to think and feel that we are fresh to play in the best possible way.” Arsenal’s win at Molineux was their first in four attempts after being knocked out of the Champions League and suffering a costly home defeat against Aston Villa that handed the initiative to City in the title race. The mental strength of Arteta’s young squad has once again been called into question after they missed out on the title last season but the manager – who said he is “convinced” his friend and mentor Mauricio Pochettino will be successful at Chelsea – revealed that he and his staff will provide as much psychological support to the players as they can during the run-in.',
      image:
          'https://a.storyblok.com/f/112937/568x464/82f66c3a21/all_the_english-_football_terms_you_need_to_know_blog-hero-low.jpg/m/620x0/filters:quality(70)/',
    ),
    NewsItem(
      date: '23 April, 2024',
      title:
          'Summerville settles seven-goal thriller to nudge Leeds closer to promotion',
      text:
          'It is no longer in their hands but Leeds retain real hope of securing automatic promotion after reclaiming second place in the Championship following a timely return to form on Teesside. Given that Michael Carrick’s much improved Middlesbrough are nobody’s pushover these days, Daniel Farke’s side needed to rediscover the ruthlessness that had deserted them in recent weeks. To the relief of the travelling fans, Crysencio Summerville, Patrick Bamford and Wilfried Gnonto obliged with potentially vital goals in a thrillingly compelling game that showcased the second tier’s often underrated appeal. While a restorative win featuring stellar performances from Archie Gray, Summerville and Bamford leaves Leeds one point behind the leaders, Leicester, and one ahead of Ipswich, their rivals both have a game in hand. “Firstly, it was a good advertisement for the Championship,” said Farke. “Compliments to Middlesbrough, it was a tight game, they tried everything and their mentality was great but we showed steel and resilience. We have our confidence back. We just have to concentrate on ourselves now.” Isaiah Jones’s duel with Junior Firpo always promised to intrigue and, sure enough, that subplot did not disappoint. Tellingly, Jones had already enjoyed some early success against Farke’s left-back when the Middlesbrough winger shot his side into a seventh-minute lead. As Illan Meslier and the excellent Emmanuel Latte Lath collided, Firpo hesitated momentarily, permitting Jones to pounce on the loose ball. The frown lines on Farke’s forehead deepened but his team responded and won a penalty when Anfernee Dijksteel sent Georginio Rutter crashing as he strove to make amends after being tricked by the Frenchman’s quick feet. Summerville settled visiting nerves thanks to a textbook conversion before Bamford further banished memories of Leeds’s collection of a solitary point in their previous three games by scoring against his old club. The visiting centre-forward enjoyed two successful spells at the Riverside and had already started to drag Carrick’s defenders out of position when he reminded his former public of his ability.',
      image:
          'https://media.istockphoto.com/id/1440483244/photo/soccer-stadium-ball-center-midfield.jpg?s=612x612&w=0&k=20&c=oxcLffTMo4KRVq5kCtBXbLRZTPwn7RRxcKlYgIooU_U=',
    ),
    NewsItem(
      date: '23 April, 2024',
      title:
          'Nottingham Forest call on PGMOL to release audio from Everton game',
      text:
          'Nottingham Forest have called on the Professional Game Match Officials Ltd (PGMOL) to release the audio of conversations between the match officials during their defeat by Everton on Sunday, while the Premier League has said it is “extremely disappointed” by the club’s complaint that the video assistant referee (VAR) was a supporter of relegation rivals Luton. Forest believe they should have been awarded three penalties during the match. Ashley Young was at the centre of three incidents which Forest felt merited a penalty. There were two alleged fouls and a handball that the on-field referee, Anthony Taylor, did not deem worthy of an offence and which the VAR, Stuart Attwell, did not intervene to overturn as Everton won 2-0 to leave Forest in 17th, one point and one place above Luton with four games remaining in the season. “Nottingham Forest has today submitted a formal request to the PGMOL to release into the public domain the audio recordings between officials during yesterday’s match against Everton at Goodison Park,” the club said in a statement. “The club has requested this be shared for three key match incidents – Ashley Young’s challenge on Giovanni Reyna (24th minute), Ashley Young’s handball (44th minute) and Ashley Young’s challenge on Callum Hudson-Odoi (56th minute). We firmly advocate for the broader football community and supporters to have access to the audio and ­transcript for full transparency, ensuring the integrity of our sport is upheld.” The FA is investigating Forest’s claim about Attwell and on Monday afternoon asked for further observations from the manager, Nuno Espírito Santo, the full-back Neco Williams and the club’s referee consultant, Mark Clattenburg, who all made outspoken comments about the denial of the penalty claims after the defeat. Nuno backed the original club statement made on Sunday saying: “I don’t understand the reason and the decision of [referee] Anthony Taylor and VAR Stuart Attwell”, while Williams said: “It is three clear, blatant penalties. Every single week, this happens now. We are getting decisions against us,',
      image:
          'https://i.guim.co.uk/img/media/639e7ec4f66d9e788e7aead4e2f7adfd17f1e6b4/359_438_2000_1200/master/2000.jpg?width=1900&dpr=1&s=none',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 65, 16, 16),
            child: Row(
              children: [
                Text(
                  'News',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [getNews()],
              ),
            )),
          ),
          const BottomBar()
        ],
      ),
    );
  }

  Widget getNews() {
    List<Widget> list = [];
    for (var news in newsList) {
      list.add(Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => DescriptionNewsPage(
                        news: news,
                        newsList: newsList,
                      )),
            );
          },
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.06),
                borderRadius: BorderRadius.circular(16)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                news.title!,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 18,
                                    color: Color(0xFF1E2321),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        news.date!,
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.4),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(
                            news.image!,
                          ))),
                ),
              ],
            ),
          ),
        ),
      ));
    }
    return Column(
      children: list,
    );
  }
}
