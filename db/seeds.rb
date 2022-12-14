print "Creating destinations..."

Destination.destroy_all

d1 = Destination.create!(
    name: "Florence",
    description: "Cradle of the Renaissance, romantic, enchanting and utterly irresistible, Florence (Firenze) is a place to feast on world-class art and gourmet Tuscan cuisine.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663330552/DesPination/florence_mnr9j0.webp",
    address: "Via de' Ginori, 8/R, 50123 Firenze FI, Italy",
    longitude: nil,
    latitude: nil
)

d2 = Destination.create!(
    name: "Kyoto",
    description: "Kyoto is old Japan writ large: atmospheric temples, sublime gardens and traditional teahouses.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663330300/DesPination/kyoto_bbuzyx.jpg",
    address: " ",
    longitude: 135,
    latitude: 35
)

d3 = Destination.create!(
    name: "Rio de Janeiro",
    description: "Golden beaches and lush mountains, samba-fueled nightlife and spectacular football matches: welcome to the Cidade Maravilhosa (Marvelous City).",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663330299/DesPination/rio_umj4uq.webp",
    address: " ",
    longitude: -43.210751193806274, 
    latitude: -22.95179684814712
)

d4 = Destination.create!(
    name: "New York",
    description: "Epicenter of the arts. Architectural darling. Dining and shopping capital. Trendsetter. New York City wears many crowns, and spreads an irresistible feast for all.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663330301/DesPination/newyork_nx3auq.webp",
    address: " ",
    longitude: -73.97194157530193, 
    latitude:  40.770020671821555
)
d5 = Destination.create!(
    name: "Cape Town",
    description: "A coming-together of cultures, cuisines and landscapes, there's nowhere quite like Cape Town, a singularly beautiful city crowned by the magnificent Table Mountain National Park.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663330303/DesPination/capetown_fcz8kd.jpg",
    address: "292 Ottery Rd, Ottery, Cape Town, 7800, South Africa",
    longitude: nil,
    latitude: nil
)

d6 = Destination.create!(
    name: "Marrakesh",
    description: "Prepare for your senses to be slapped. Marrakesh's heady sights and sounds will dazzle, frazzle and enchant. Put on your babouches (leather slippers) and dive right in.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663330301/DesPination/Marrakesh_cdleep.jpg",
    address: " ",
    longitude: 7.7917,
    latitude: 31

   
)

puts "created #{Destination.count} destinations"

# ====================================================

print "Creating categories..."

Category.destroy_all


c1 = Category.create!(
    name: "Historical"
)

c2 = Category.create!(
    name: "Nature"
)

c3 = Category.create!(
    name: "Eatery"
)


puts "created #{Category.count} categories"

#======================================================

print "Creating attractions... "

Attraction.destroy_all

# Attractions for Florence a1 - a9

a1 = Attraction.create!(
    name: "Santa Maria del Fiore",
    description: "The striking green-and-white marble facade of 13th- to 15th-century Basilica di Santa Maria Novella fronts an entire monastical complex, comprising romantic church cloisters and a frescoed chapel. The basilica itself is a treasure chest of artistic masterpieces, climaxing with frescoes by Domenico Ghirlandaio. The lower section of the basilica's striped marbled facade is transitional from Romanesque to Gothic; the upper section and the main doorway were designed by Leon Battista Alberti.",
    category_id: c1.id,
    address: "Piazza del Duomo, 50122 Firenze FI, Italy",
    longitude: nil, 
    latitude: nil,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399052/Project%202%20Images/Santa_Maria_del_fiore_2_lodevn.jpg",
    destination_id: d1.id
)

a2 = Attraction.create!(
    name: "Ponte Vecchio",
    description: "Dating from 1345, iconic Ponte Vecchio was the only Florentine bridge to survive destruction at the hands of retreating German forces in 1944. Above jewellery shops on the eastern side, the Corridoio Vasariano is a 16th-century passageway between the Uffizi and Palazzo Pitti that runs around, rather than through, the medieval Torre dei Mannelli at the bridge's southern end.",
    category_id: c1.id,
    address: "Ponte Vecchio, 50125 Firenze FI, Italy",
    longitude: nil, 
    latitude: nil,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663844704/Project%202%20Images/Ponte_Vecchio_uzf8ce.jpg",
    destination_id: d1.id
)

a3 = Attraction.create!(
    name: "Uffizi Gallery",
    description: "Home to the world's greatest collection of Italian Renaissance art, Florence's premier gallery occupies the vast U-shaped Palazzo degli Uffizi, built as government offices. The collection, bequeathed to the city by the Medici family in 1743 on condition that it never leave Florence, contains some of Italy's best-known paintings, including a room full of Botticelli masterpieces.",
    category_id: c1.id,
    address: "Piazzale degli Uffizi, 6, 50122 Firenze FI, Italy",
    longitude: nil, 
    latitude: nil,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399054/Project%202%20Images/Uffizi_Gallery_nehf5o.avif",
    destination_id: d1.id
)

a4 = Attraction.create!(
    name: "Giardino Bardini",
    description: "This 17th-century villa and garden was named after 19th-century antiquarian art collector Stefano Bardini, who bought it in 1913 and restored its ornamental medieval garden. It has all the features of a quintessential Tuscan garden, including artificial grottoes, orangery, marble statues and fountains. Inside the villa, the small Museo Pietro Annigoni displays works by Italian painter Pietro Annigoni. End with city views from the romantic roof terrace.",
    category_id: c2.id,
    address: "Via de' Bardi, 1, 50125 Firenze FI, Italy",
    longitude: nil, 
    latitude: nil,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399045/Project%202%20Images/Giardino_Bardini_y9vyr1.avif",
    destination_id: d1.id
)

a5 = Attraction.create!(
    name: "Folon e il Giardino delle Rose",
    description: "The Rose Garden in Florence is a place of extraordinary beauty, where you can see for free many different types of roses and other plants. That's why it is the ideal place for a romantic promenade or for a break in a green oasis set in the heart of Florence.",
    category_id: c2.id,
    address: "Viale Giuseppe Poggi, 2, 50125 Firenze FI, Italy",
    longitude: nil, 
    latitude: nil,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399047/Project%202%20Images/Giardino_delle_Rose_bqe3fj.jpg",
    destination_id: d1.id
)

a6 = Attraction.create!(
    name: "Parco del cascine",
    description: "Florence's largest park is dotted with playgrounds and is a great place to let the little 'uns loose. Families take over at weekends and the park is a colourful scene with rollerbladers, kite-flyers, joggers and kids on bikes. In summer you can also use Le Pavoniere swimming pool..",
    category_id: c2.id,
    address: "Piazzale delle Cascine, 50144 Firenze FI, Italy",
    longitude: nil, 
    latitude: nil,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399052/Project%202%20Images/Parco_del_cascine_y9wkqk.avif",
    destination_id: d1.id
)


a7 = Attraction.create!(
    name: "La Giostra",
    description: "Run by an Austrian royal family, the space boasts the perfect ambience for a romantic night out with candle-lit tables and deep red wines in beautiful glass decanters. Given the restaurant's popularity, make a reservation in advance.",
    category_id: c3.id,
    address: "Borgo Pinti, 6R, 50121 Firenze FI, Italy",
    longitude: nil, 
    latitude: nil,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399048/Project%202%20Images/La_giostra_gb7qms.jpg",
    destination_id: d1.id
)

a8 = Attraction.create!(
    name: "Trattoria Marione",
    description: "Old-school style in ambience and cooking techniques, this classic trattoria is perennially filled with Italians on their lunch break or out to dinner with friends. Make sure to order the seasonal specials and ask for the waiter's recommendations. Do call in advance to secure yourself a table, especially during Italian holidays.",
    category_id: c3.id,
    address: "Via della Spada, 13, 50123 Firenze FI, Italy",
    longitude: nil, 
    latitude: nil,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399053/Project%202%20Images/Trattoria_Marione_uhmqdz.jpg",
    destination_id: d1.id
)

a9 = Attraction.create!(
    name: "Perseus",
    description: "If you're looking for steak, it's worth the effort to get out to Perseus. Located just past the old walls of the city centre, this is the go-to destination for Florentines craving steak. Everything from the decor to the menu reflects a devotion to tradition.",
    category_id: c3.id,
    address: "Viale Don Giovanni Minzoni, 10/R, 50129 Firenze FI, Italy",
    longitude: nil, 
    latitude: nil,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399052/Project%202%20Images/Perseus_mo04tp.jpg",
    destination_id: d1.id
)

# Attractions for Kyoto a10 - a18

a10 = Attraction.create!(
    name: "Fushimi Inari-Taisha",
    description: "With seemingly endless arcades of vermilion torii (shrine gates) spread across a thickly wooded mountain, this vast shrine complex is a world unto its own. It is, quite simply, one of the most impressive and memorable sights in Kyoto.",
    category_id: c1.id,
    address: " ",
    longitude: 135.77266739150272,
    latitude: 34.96713809674221,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399045/Project%202%20Images/Fushimi_Inari_iyo8jd.avif",
    destination_id: d2.id
)

a11 = Attraction.create!(
    name: "Kinkaku-ji",
    description: "Kyoto's famed 'Golden Pavilion', Kinkaku-ji is one of Japan's best-known sights. The main hall, covered in brilliant gold leaf, shining above its reflecting pond is truly spectacular. Needless to say, due to its beauty, the temple can be packed any day of the year. It's best to go early in the day or just before closing, ideally on a weekday.",
    category_id: c1.id,
    address: " ",
    longitude: 135.72931070286677,
    latitude: 35.03932193575521,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399513/Project%202%20Images/kinkakuji_xjo6aa.avif",
    destination_id: d2.id
     
)

a12 = Attraction.create!(
    name: "Kiyomizu-dera",
    description: "A buzzing hive of activity perched on a hill overlooking the basin of Kyoto, Kiyomizu-dera is one of Kyoto's most popular and most enjoyable temples. It may not be a tranquil refuge, but it represents the favoured expression of faith in Japan. The excellent website is a great first port of call for information on the temple, plus a how-to guide to praying here. Note that the Main Hall is undergoing renovations and may be covered, but is still accessible.",
    category_id: c1.id,
    address: " ",
    longitude: 135.72985798422226,
    latitude: 35.040067572842396, 
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399047/Project%202%20Images/Kiyomizu-dera_jijbfg.avif",
    destination_id: d2.id
    

)

a13 = Attraction.create!(
    name: "Arashiyama Bamboo Grove",
    description: "The thick green bamboo stalks seem to continue endlessly in every direction and there's a strange quality to the light at this famous bamboo grove, which has become one of Kyoto's must-visit sights. It's most atmospheric on the approach to ??k??chi Sans?? villa and you'll be unable to resist trying to take a few photos, but you might be disappointed with the results: photos just can't capture the magic of the place.",
    category_id: c2.id,
    address: "Sagatenryuji Susukinobabacho, Ukyo Ward, Kyoto, 616-8385, Japan",
    longitude: 135.676082429834, 
    latitude: 35.017491472840995, 
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399041/Project%202%20Images/Arashiyama_bamboo_o9eagz.avif",
    destination_id: d2.id

)

a14 = Attraction.create!(
    name: "Daitokuji Temple",
    description: "For anyone with the slightest fondness for Japanese gardens, don't miss this network of lanes dotted with atmospheric Zen temples. Daitoku-ji, the main temple here, serves as headquarters for the Rinzai Daitoku-ji school of Zen Buddhism. It's not usually open to the public but there are several subtemples with superb carefully raked karen-sensui (dry landscape) gardens well worth making the trip out for. Highlights include Daisen-in, K??t??-in, Ry??gen-in and Zuih??-in.",
    category_id: c2.id,
    address: "53 Murasakino Daitokujicho, Kita Ward, Kyoto, 603-8231, Japan",
    longitude: 135.74452218472348, 
    latitude: 35.04343926076645, 
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399043/Project%202%20Images/Daitokuji_t9cwtf.avif",
    destination_id: d2.id

)

a15 = Attraction.create!(
    name: "Maruyama-k??en",
    description: "Maruyama-k??en is a favourite of locals and visitors alike. This park is the place to come to escape the bustle of the city centre and amble around gardens, ponds, souvenir shops and restaurants. Peaceful paths meander through the trees, and carp glide through the waters of a small pond in the park's centre.",
    category_id: c2.id,
    address: "Maruyamacho, Higashiyama Ward, Kyoto 605-0071, Japan",
    longitude: nil, 
    latitude: nil,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399049/Project%202%20Images/Maruyama-koen_hpu9ty.avif",
    destination_id: d2.id

)

a16 = Attraction.create!(
    name: "Nishiki Market",
    description: "The covered Nishiki Market (Nishiki-k??ji Ichiba) is one of Kyoto's real highlights, especially if you have an interest in cooking and dining. Commonly known as Kyoto no daidokoro (Kyoto's kitchen) by locals, this is the place to see the weird and wonderful foods that go into Kyoto cuisine, and where most of Kyoto's high-end restaurateurs and well-to-do do their food shopping.",
    category_id: c3.id,
    address: "185-2 Higashiuoyacho, Nakagyo Ward, Kyoto, 604-8055, Japan",
    longitude: 135.76478582660394,
    latitude: 35.00492928035746, 
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399050/Project%202%20Images/Nishiki_market_2_pmeumd.jpg",
    destination_id: d2.id

)

a17 = Attraction.create!(
    name: "Sushisei",
    description: "A branch of Tokyo's famed Sushisei chain, Kyoto's Sushisei is where we go when we find ourselves craving casual sushi right downtown. Sit at the counter and watch the chefs do their thing, or grab a table with a few friends. It's easy to spot: It's on the basement level of the building opposite the east side of Daimaru Department Store (on Takakura-dori Street). ",
    category_id: c3.id,
    address: "",
    longitude: 135.76297496137565,
    latitude: 35.004600365873465,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399053/Project%202%20Images/Sushisei_sjeweh.jpg",
    destination_id: d2.id

)

a18 = Attraction.create!(
    name: "Den Shichi",
    description: "Saiin, a rather non-descript neighborhood on the west side of Kyoto, is the last place you'd expect to find a great sushi restaurant. But Den Shichi, located in the heart of Saiin, is one of the best and most accessible sushi restaurants in the city. Sure, there are better sushi bars in Kyoto, but many of these are almost off-limits to foreigners (not because of discrimination, simply because you need an introduction to a regular client to get in). ",
    category_id: c3.id,
    address: " ",
    longitude: 135.73037963068782 ,
    latitude: 35.00331272361787, 
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399043/Project%202%20Images/Den_shichi_w0hp76.jpg",
    destination_id: d2.id

)

# Attractions for Rio de Janeiro a19 - 27

a19 = Attraction.create!(
    name: "Christo Redentor",
    description: "Standing atop Corcovado (which means 'hunchback'), Cristo Redentor gazes out over Rio, a placid expression on his well-crafted face. The mountain rises straight up from the city to 710m, and at night the brightly lit 38m-high open-armed statue, all 1145 tons of him, is visible from nearly every part of the city.",
    category_id: c1.id,
    address: " ",
    longitude: -43.210751193806274, 
    latitude: -22.95179684814712, 
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399043/Project%202%20Images/Christo_Redentor_c4choe.jpg",
    destination_id: d3.id

)

a20 = Attraction.create!(
    name: "Escadaria Selar??n",
    description: "One of Rio's best-loved attractions, the steps leading up from Joaquim Silva became a work of art when Chilean-born artist Jorge Selar??n decided to cover them with colorful mosaics. A dedication to the Brazilian people, the 215 steps are a vivid riot of color.",
    category_id: c1.id,
    address: " ",
    longitude: -43.17899975462468, 
    latitude: -22.915252756472277, 
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399045/Project%202%20Images/Escadaria_Selaron_kogtjc.avif",
    destination_id: d3.id

)

a21 = Attraction.create!(
    name: "Instituto Moreira Salles",
    description: "This beautiful cultural center hosts impressive exhibitions, often showcasing the works of some of Brazil's best photographers and artists. The gardens, complete with artificial lake and flowing river, were designed by Brazilian landscape architect Roberto Burle Marx. There's also a craft shop, and an excellent cafe that serves breakfast all day as well as lunch and afternoon tea.",
    category_id: c1.id,
    address: " ",
    longitude: -43.239537446686846,
    latitude: -22.98165636226125,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399047/Project%202%20Images/Instituto_Moreira_Salles_e3cwzq.avif",
    destination_id: d3.id

)

a22 = Attraction.create!(
    name: "Parque Nacional da Tijuca",
    description: "The Tijuca is all that's left of the Atlantic rainforest that once surrounded Rio de Janeiro. This 39-sq-km tropical-jungle preserve is an exuberant green, with beautiful trees, creeks and waterfalls, mountainous terrain and high peaks. It has an excellent, well-marked trail system. Candomblistas (practitioners of the Afro-Brazilian religion of Candombl??) leave offerings by the roadside; families have picnics; and serious hikers climb the 1012m to the summit of Pico da Tijuca.",
    category_id: c2.id,
    address: " ",
    longitude: -43.286113533608145,
    latitude: -22.950747295348748, 
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399051/Project%202%20Images/Parque_nacional_da_tijuca_jp65th.avif",
    destination_id: d3.id

)

a23 = Attraction.create!(
    name: "Copacabana Beach",
    description: "A magnificent confluence of land and sea, the long, scalloped beach of Copacabana extends for some 4km, with a flurry of activity along its length: over-amped soccer players singing their team's anthem; cariocas (Rio residents) and tourists lining up for caipirinhas at kiosks; favela kids showing off their soccer skills; and beach vendors shouting out their wares among the tanned beach bodies.",
    category_id: c2.id,
    address: " ",
    longitude: -43.18574967485061,
    latitude: -22.97391026862447,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399043/Project%202%20Images/Copacabana_Beach_gnggwn.avif",
    destination_id: d3.id

)

a24 = Attraction.create!(
    name: "P??o de A????car",
    description: "Seen from the peak of P??o de A????car, Rio is undoubtedly a Cidade Maravilhosa (Marvelous City). There are many good times to make the ascent, but sunset on a clear day is the most rewarding. Two cable cars connect to the summit, 395m above Rio. At the top, the city unfolds beneath you, with Corcovado mountain and Cristo Redentor (Christ the Redeemer) off to the west, and Copacabana Beach to the south.",
    category_id: c2.id,
    address: " ",
    longitude: -43.195706036725035,
    latitude: -22.96770635361246, 
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399051/Project%202%20Images/Pao_de_Acucar_auhljz.avif",
    destination_id: d3.id

)

a25 = Attraction.create!(
    name: "Feira Nordestina",
    description: "Hundreds of food and drinks stalls makes this an excellent place to sample authentic, spicy regional cuisine, including plenty of seafood options. You'll forget the accusation that Brazilian food can be bland when you get your chops around the chili peppers and pepper sauces offered here.",
    category_id: c3.id,
    address: " ",
    longitude:  -43.22014819640872,
    latitude: -22.89771305070836,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399045/Project%202%20Images/Feira_Nordestina_i0xrwu.jpg",
    destination_id: d3.id

)

a26 = Attraction.create!(
    name: "Oro",
    description: "An inspired reimagining of Brazil's culinary heritage, centered on open-flame cooking, has snagged Oro both a Michelin star and a spot on the world's 50 best restaurants list. Whether dining on the 'Creativity' tasting menu, which celebrates seasonal produce, or the abridged 'Affectivity' menu of two signature dishes, award-winning sommelier Celia will (Bronze's wife) will select perfect wine pairings.",
    category_id: c3.id,
    address: " ",
    longitude: -43.22480998901483,
    latitude: -22.986047961937913,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399050/Project%202%20Images/Oro_qdqiqv.jpg",
    destination_id: d3.id

)

a27 = Attraction.create!(
    name: "Braseiro",
    description: "Unpretentious and authentic, the space may be tiny, but the portions are far from it. Order the picanha, a cut that's tricky to find outside Brazil, and sausages drizzled with lime. No matter if there's a wait for the staff to squeeze you in: sip a draft beer and soak up the lively carioca atmosphere.",
    category_id: c3.id,
    address: " ",
    longitude:  -43.227246009400844, 
    latitude: -22.974062964952854,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399041/Project%202%20Images/Braseiro_zfbf4f.jpg",
    destination_id: d3.id

)

# Attractions for New York a28 - a36

a28 = Attraction.create!(
    name: "Metropolitan Museum of Art",
    description: "What started with a handful of paintings brought over from Europe or donated by a coterie of philanthropically minded robber barons in the 19th century has since become a massive collection of two million works of art representing 5000 years of history. It's also become one of the most beloved corners of New York City. The Met (as it's affectionately known) has been memorialized in the verses of Leonard Cohen and Jorge Luis Borges, featured prominently on Gossip Girl, and was sorely missed when it closed its doors as the COVID-19 pandemic rocked New York City.",
    category_id: c1.id,
    address: " ",
    longitude:  -73.96235639210677,
    latitude:  40.779872957725914,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399049/Project%202%20Images/Metropolitan_museum_of_art_xzmd1l.avif",
    destination_id: d4.id

)

a29 = Attraction.create!(
    name: "National September 11 Memorial Museum",
    description: "When the twin towers of the World Trade Center toppled during the awful events of 11 September 2001, it led to years of soul-searching about what would be an appropriate memorial to replace these lost landmarks. Eventually, New York City opted for subtlety and dignity, and the end result was this humbling museum in Lower Manhattan & the Financial District, flanked by the sombre reflective pools of the adjacent National September 11 Memorial, creating a moving homage to those lost in the tragedy.",
    category_id: c1.id,
    address: " ",
    longitude:  -74.01244641555874,
    latitude: 40.71134961926125,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399041/Project%202%20Images/9-11_memorial_gau6ep.avif",
    destination_id: d4.id

)

a30 = Attraction.create!(
    name: "Brooklyn Bridge",
    description: "A New York icon, the Brooklyn Bridge was the world's first steel suspension bridge, and, at almost 1596ft, the longest when it opened in 1883. Construction was fraught with disaster, but the bridge's neo-Gothic towers have endured as city emblems. Crossing the bridge is a breeze-buffeted, exhilarating journey with numerous photo-ops. The suspended bicycle/pedestrian walkway delivers soul-stirring views of Manhattan, the East River and the waterfront.",
    category_id: c1.id,
    address: " ",
    longitude: -73.99696061114417,
    latitude: 40.706142055379004, 
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399042/Project%202%20Images/Brooklyn_bridge_hkl6sy.avif",
    destination_id: d4.id

)

a31 = Attraction.create!(
    name: "Central Park",
    description: "One of the world's most renowned green spaces, Central Park comprises 843 acres of rolling meadows, boulder-studded outcroppings, elm-lined walkways, manicured European-style gardens, a lake and a reservoir ??? not to mention an outdoor theater, a memorial to John Lennon, an idyllic waterside eatery and a famous Alice in Wonderland statue.",
    category_id: c2.id,
    address: " ",
    longitude: -73.97194157530193, 
    latitude:  40.770020671821555,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399042/Project%202%20Images/Central_park_jus1bt.avif",
    destination_id: d4.id

)

a32 = Attraction.create!(
    name: "High Line",
    description: "It's hard to believe that the 1??-mile-long High Line, a shining example of brilliant urban renewal, was once a dingy freight line that anchored a rather unsavory district of slaughterhouses. Today, this eye-catching attraction is one of New York's best-loved green spaces, drawing visitors who come to stroll, sit and picnic 30ft above the city, while enjoying fabulous views of Manhattan's ever-changing urban landscape. It loops around Hudson Yards and ends at 34th St.",
    category_id: c2.id,
    address: " ",
    longitude: -74.00471125788566, 
    latitude: 40.74803311949425,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399050/Project%202%20Images/Highline_algbyt.avif",
    destination_id: d4.id

)

a33 = Attraction.create!(
    name: "Hudson River Park",
    description: "The High Line may be all the rage these days, but one block away from that famous elevated park stretches a 5-mile-long recreational space that has transformed the city over the past decade. Covering 550 acres (400 of which are on the water) and running from Battery Park at Manhattan's southern tip to 59th St in Midtown, Hudson River Park is Manhattan's wondrous backyard. The long riverside path is a great spot for cycling, running and strolling.",
    category_id: c2.id,
    address: " ",
    longitude:  -74.0092281286541,
    latitude: 40.749520181073024,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399046/Project%202%20Images/Hudson_river_park_zkqqd4.avif",
    destination_id: d4.id

)

a34 = Attraction.create!(
    name: "The Halal Guys",
    description: "The Halal Guys is a halal fast casual restaurant franchise that began as halal carts on the southeast and southwest corners of 53rd Street and Sixth Avenue in Manhattan, New York City. New locations, both food cart and storefront, are being added throughout New York (including a storefront on 14th Street and Second Avenue) and around the world. The franchise is most recognized by its primary dish which is a platter of chicken or gyro meat with rice, though it also serves a chicken or gyro wrap sandwich.",
    category_id: c3.id,
    address: " ",
    longitude: -73.97934775188288, 
    latitude: 40.76177233959733,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399054/Project%202%20Images/The_halal_guys_y9mub8.jpg",
    destination_id: d4.id

)

a35 = Attraction.create!(
    name: "Joe's Pizza",
    description: "Joe's Pizza, also called Famous Joe's Pizza, is a pizzeria located in Greenwich Village, Manhattan, New York City on Carmine Street near Bleecker Street. The restaurant is known for serving a classic New York street styled pizza and has been called a 'Greenwich Village institution'. The pizzeria serves by the slice or by full pie.",
    category_id: c3.id,
    address: " ",
    longitude:  -73.98721664677278, 
    latitude: 40.75459247103954,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399049/Project%202%20Images/Joes_pizza_g9etnf.jpg",
    destination_id: d4.id

)

a36 = Attraction.create!(
    name: "Eleven Madison Park",
    description: "After briefly shuttering its doors and opening a pop-up in East Hampton, the world's best restaurant (which closed immediately after winning the top spot) has returned. In addition to the pricey 8- to 10-course tasting menu in the dining room, you can now order a more affordable tasting menu at the bar, which also offers snacks and cocktails (or choose from its 20,000 bottles of 4,000 wines). The seasonal menu is packed with hyperminimalist treats, including two foie gras dishes and a smoked sturgeon cheesecake with caviar. Regulars of the previous iteration will be happy to know that its signature savory black-and-white cookies are back in town. ",
    category_id: c3.id,
    address: " ",
    longitude:  -73.98794340524029,
    latitude: 40.742115219923676,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399044/Project%202%20Images/Eleven_madison_park_ygodmf.jpg",
    destination_id: d4.id

)

# Attractions for Cape Town a37 - a45

a37 = Attraction.create!(
    name: "The Victoria and Alfred Waterfront",
    description: "Stretching around two harbor basins, the Victoria and Alfred Waterfront is a buzzing entertainment quarter reminiscent of Fisherman's Wharf in San Francisco. Once a scruffy fishing harbor, this reimagined waterfront district is now one of the city's top tourist attractions, and many of the old buildings have been preserved and restored. Millions of visitors a year flock here to the shops, jazz venues, restaurants, hotels, theaters, drama school, cinemas, and museums.",
    category_id: c1.id,
    address: " ",
    longitude: 18.420048305145922,
    latitude: -33.90632609983493, 
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399054/Project%202%20Images/V_A_waterfront_vrni31.jpg",
    destination_id: d5.id

)

a38 = Attraction.create!(
    name: "District Six Museum",
    description: "It's impossible not to be emotionally moved by this museum, which celebrates the once lively multiracial area that was destroyed during apartheid in the 1960s and 1970s, its 60,000 inhabitants forcibly removed. Inside the former Methodist Mission Church, home interiors have been recreated, alongside photographs, recordings and testimonials, all of which build an evocative picture of a shattered but not entirely broken community.",
    category_id: c1.id,
    address: " ",
    longitude: 18.42359116705123, 
    latitude: -33.927784495801674,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399043/Project%202%20Images/district_six_museum_m42rdi.avif",
    destination_id: d5.id

)

a39 = Attraction.create!(
    name: "Robben Island",
    description: "Used as a prison from the early days of the VOC (Dutch East India Company) right up until 1996, this Unesco World Heritage site is preserved as a memorial to those (such as Nelson Mandela) who spent many years incarcerated here. You can only go here on a tour, which lasts around four hours including ferry rides, departing from the Nelson Mandela Gateway beside the Clock Tower at the Waterfront. Booking online well in advance is highly recommended as tours can sell out.",
    category_id: c1.id,
    address: " ",
    longitude: 18.37146798906821, 
    latitude: -33.807311495106134,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399052/Project%202%20Images/Robben_island_zp6dwa.avif",
    destination_id: d5.id

)

a40 = Attraction.create!(
    name: "Table Mountain",
    description: "Around 600 million years old, and a canvas painted with the rich diversity of the Cape floral kingdom, Table Mountain is truly iconic. You can admire the showstopper of Table Mountain National Park and one of the 'New 7 Wonders of Nature' (https://nature.new7wonders.com) from multiple angles, but you really can't say you've visited Cape Town until you've stood on top of it.",
    category_id: c2.id,
    address: " ",
    longitude:  18.42564869472592, 
    latitude: -33.966788597737235,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663400041/Project%202%20Images/Table_mountain_gakpgw.jpg",
    destination_id: d5.id

)

a41 = Attraction.create!(
    name: "Kirstenbosch National Botanical Garden",
    description: "Location and unique flora combine to make these 5.28-sq-km botanical gardens among the most beautiful in the world. Gate 1, the main entrance at the Newlands end of the gardens, is where you'll find the information centre, an excellent souvenir shop and the conservatory.",
    category_id: c2.id,
    address: " ",
    longitude:  18.43279709959252, 
    latitude: -33.98758114383526,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399048/Project%202%20Images/kirstenbosch_garden_bbutvh.avif",
    destination_id: d5.id

)

a42 = Attraction.create!(
    name: "Cape of Good Hope",
    description: "This 77.5-sq-km section of Table Mountain National Park includes awesome scenery, fantastic walks, great birdwatching and often-deserted beaches. The reserve is commonly referred to as Cape Point, after its most dramatic (but less famous) promontory. Bookings are required for the two-day Cape of Good Hope Trail, a spectacular 33.8km circular route with one night spent in a basic hut. Contact the Buffelsfontein Visitor Centre for further details.",
    category_id: c2.id,
    address: " ",
    longitude: 18.45791110412334, 
    latitude: -34.2616808739522,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399042/Project%202%20Images/Cape_of_good_hope_neie9n.avif",
    destination_id: d5.id

)

a43 = Attraction.create!(
    name: "Oranjezicht City Farm Market at Granger Bay",
    description: "What started as a small urban farm's produce market somehow blossomed into the best weekend activity and the best market in town. With a perfect location between the World Cup stadium and the ocean, the OZCF market is the place to come hungry and try everything you pass. We recommend lapping the whole thing once, if not twice, and then posting up at an outdoor table. Our favorites are the Thank Goodness Foods pastries, Lunchworks rosti plate, and Good Egg breakfast sandwich. A weekend morning here is such an unmissable part of Cape Town that we highly recommend planning your trip around it.",
    category_id: c3.id,
    address: " ",
    longitude: 18.415392640066425, 
    latitude: -33.902541209464516, 
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399050/Project%202%20Images/Oranjezicht_market_ixlmqd.jpg",
    destination_id: d5.id

)

a44 = Attraction.create!(
    name: "Royale Eatery",
    description: "Yes, we know, meat-based burgers are kinda over. Cape Town knows that too. That's why this local stalwart has totally moved with the times, as well as a full page of vegan and veggie burger options in the menu (think black beans, pumpkin, butternut squash, soya, lentils and falafel), there are also dairy-free shakes. We like the chocolate and coconut. For a meat feast with a South African twist try the Big Bird, a 160g ostrich patty with homemade beetroot relish..",
    category_id: c3.id,
    address: " ",
    longitude: 18.420821397290787, 
    latitude: -33.9034491652413,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399053/Project%202%20Images/Royale_eatery_dtwr9n.jpg",
    destination_id: d5.id

)

a45 = Attraction.create!(
    name: "Codfather Seafood and Sushi",
    description: "Beautiful Camps Bay is the city's celeb hangout, but the Codfather has little of its district's showy nature. Choose from a wide array of fish on the chilled counter or pick from the sushi belt. And make sure to bag a table near the windows to catch the sunset views. ",
    category_id: c3.id,
    address: " ",
    longitude:  18.377371295887897, 
    latitude: -33.954140880040356,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399043/Project%202%20Images/Codfather_seafood_and_sushi_lo5d8c.jpg",
    destination_id: d5.id

)

# Attractions for Marrakesh a46 - a54

a46 = Attraction.create!(
    name: "El Badi Palace",
    description: "Badi Palace was once the biggest and most splendid palace complex in Morocco. Today, little is left of the splendor of the Saadians, yet the remaining ruins indicate the dimensions of the former palace. And there is another worthwhile destination hidden away in El Badi.",
    category_id: c1.id,
    address: " ",
    longitude:  -7.985797929304151, 
    latitude: 31.61831860753913,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399044/Project%202%20Images/El_badi_palace_bxgbf3.jpg",
    destination_id: d6.id

)

a47 = Attraction.create!(
    name: "Bahia Palace",
    description: "La Bahia (The Beautiful) is an 8000-sq-metre, floor-to-ceiling extravagance of intricate marquetry, plasterwork and zouak (painted wood), and certainly one of Marrakesh's most eye-popping sights. The salons of both the Petit Riad and Grand Riad host intricate marquetry and zouak ceilings, but the Cour d'Honneur, a grand courtyard, with its 1500 sq metre floor of Italian Carrara marble, is the undisputed highlight.",
    category_id: c1.id,
    address: " ",
    longitude:  -7.981532802319888, 
    latitude: 31.621720417243257,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399041/Project%202%20Images/Bahia_palace_mybdcw.avif",
    destination_id: d6.id

)

a48 = Attraction.create!(
    name: "Koutoubia Mosque",
    description: "Five times a day, one voice rises above the din of Djemaa El Fna as the muezzin calls the faithful to prayer from the Koutoubia Mosque. The mosque's minaret has been standing guard over the old city since the Almohads erected it in the 12th century. Today it's Marrakesh's most famous landmark. The tower is a monumental cheat sheet of Moorish ornament: scalloped keystone arches, jagged merlon crenelations and mathematically pleasing proportions.",
    category_id: c1.id,
    address: " ",
    longitude: -7.993886225071161 ,
    latitude: 31.6238684811439, 
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399049/Project%202%20Images/Koutoubia_mosque_rusntn.avif",
    destination_id: d6.id

)

a49 = Attraction.create!(
    name: "Jardin Majorelle",
    description: "French fashion designer Yves Saint Laurent and his partner Pierre Berg?? bought Jardin Majorelle in 1980 to preserve the vision of its original owner, French landscape painter Jacques Majorelle, and keep it open to the public. The garden, started in 1924, contains a psychedelic desert mirage of 300 plant species from five continents. At its heart lies Majorelle's electric-blue art deco studio, home to the Mus??e Berb??re, which showcases the rich panorama of Morocco's indigenous inhabitants through displays of some 600 artifacts.",
    category_id: c2.id,
    address: " ",
    longitude:  -8.00223850231942, 
    latitude: 31.641275613359173,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399046/Project%202%20Images/Jardin_majorelle_ao9rvx.avif",
    destination_id: d6.id

)

a50 = Attraction.create!(
    name: "Cactus Thiemann",
    description: "If you think a cacti garden isn't worth travelling across the bumpy lunar pistes of outer Marrakesh for, think again. Cactus Thiemann is one of North Africa's largest cacti farms, with fields of giant aloe, agave and prickly pear. The largest cactus, at 8m high, is 80 years old and was brought to Morocco overland from Europe in a souped-up military vehicle by founder Hans Thiemann. Tours of the 17-acre nursery and its 150 cacti varieties are fascinating. There are also camels for kids.",
    category_id: c2.id,
    address: " ",
    longitude:  -7.9844600446457115, 
    latitude: 31.711597164763994,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663400352/Project%202%20Images/cactus_thiemann_kkk7mn.avif",
    destination_id: d6.id

)

a51 = Attraction.create!(
    name: "Agdal Garden",
    description: "Built in the 12th century by the founder of the Almohad caliphate, Agdal was once the most important garden in Marrakesh. Although the gardens and its pools cover a huge expanse along the southern edges of the walled medina, only a fraction of it is accessible to the public because Agdal backs onto the Royal Palace (still in use). From the Saadian Tombs it's about a 45-minute walk south, consider renting a bike to get down here, particularly in hot weather.",
    category_id: c2.id,
    address: " ",
    longitude: -7.999162443937079, 
    latitude: 31.594676993769667, 
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399040/Project%202%20Images/Agdal_garden_nhm57r.avif",
    destination_id: d6.id

)

a52 = Attraction.create!(
    name: "Djemaa El Fna",
    description: "Roll up, roll up for the greatest show on earth. Everywhere you look in Djemaa El Fna, Marrakesh's main square (pronounced 'jema', the 'd' is silent), you'll discover drama in progress. The hoopla and halqa (street theater) have been non-stop here since the 11th century. Until a few decades ago, it hosted a daily food market for mountain traders. Now the whine of snake-charmer pungi flutes hits full throttle by mid-morning, and the show doesn't really kick off until sunset when restaurants fire up their grills, cueing musicians to tune up their instruments.",
    category_id: c3.id,
    address: " ",
    longitude: -7.987733613960005, 
    latitude: 31.626242639491398, 
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399044/Project%202%20Images/Djemma_el_fna_bjbah0.avif",
    destination_id: d6.id

)

a53 = Attraction.create!(
    name: "Amal Centre",
    description: "Likely the best home-cooked meal you'll eat in Marrakech is served at the Amal Centre, a social cooperative that supports and trains disadvantaged women. The food includes unusual salads with lentils, cauliflower and leeks, a truly excellent fish tagine and a traditional Friday couscous. Prices are low, and there are cr??che facilities, meaning the dining room is a happy mix of locals and savvy travellers.",
    category_id: c3.id,
    address: " ",
    longitude:  -8.013614569779817,
    latitude: 31.638963947117645,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399041/Project%202%20Images/Amal_center_vyb11g.jpg",
    destination_id: d6.id

)

a54 = Attraction.create!(
    name: "Le Trou au Mur",
    description: "The menu at James Wix's retro Moroccan restaurant draws straight from grandma's cookbook. Here you can sample traditional specialities such as berkoukesh (handmade pasta with a herb and tomato sauce), tride (shredded pancakes with lentils, chicken and saffron) and tihane (offal stuffed with spiced kefta, olives and lemons). Not so old is the contemporary, orientalist d??cor and the fabulous cocktails, best enjoyed on the roof terrace.",
    category_id: c3.id,
    address: "",
    longitude:  -7.985338358139744, 
    latitude: 31.632069386008077,
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663399049/Project%202%20Images/Le_trou_au_mur_krgh40.jpg",
    destination_id: d6.id

)

puts "created #{Attraction.count} attractions"


#======================================================
print "creating events....."

Event.destroy_all

e1 = Event.create!(
    name: "Florence Paper Lantern Festival",
    location:"Santissima Annunziata",
    time: "4th September 2022, 8pm",
    description: "On the evening of September 7th Florentines gather on the banks of the river Arno carrying colored paper lanterns. With lanterns on sticks they take part in the procession in honor of the Virgin Mary's Nativity, that is celebrated the following day.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663389311/DesPination/florence-event1_kixs0r.jpg",
    destination_id: d1.id, 
    attraction_id: nil 
)


e2 = Event.create!(
    name: "Festa di Santa Reparata",
    location:" Santa Maria del Fiore",
    time: "8th October 2022, 12pm",
    description: "Santa Reparata was Florence's ancient cathedral built on the site where Santa Maria del Fiore is located today Generally, celebrations include guided visits of 'Roman Florence' and conferences on Roman Florence in the first centuries of the Christian era. A historical parade honoring the Florentine Republic is followed by a ceremony in Santa Reparata's crypt in the evening.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663389308/DesPination/florence-event2_tp6cgs.jpg",
    destination_id: d1.id, 
    attraction_id: a1.id
)

e3 = Event.create!(
    name: "Gion Odori",
    location:"Gion",
    time: "4th September 2022, 8pm",
    description: "The Gion Higashi geisha district puts on their annual geisha dance in the Gion Kaikan hall on Higashioji-dori in early November. This is the smallest of the city is five geisha districts and their dance is both intimate and somewhat quaint ??? a stark contrast to the grand Miyako Odori held by the main Gion geisha district. This is part of the charm of the event. Also, this is the only major geisha dance to be held in the fall. ",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663389310/DesPination/kyoto-event3_qsi1g9.jpg",
    destination_id: d2.id, 
    attraction_id: nil 
)


e4 = Event.create!(
    name: "Hanami party",
    location:" Maruyama-k??en ",
    time: "25th May 2022, 12pm",
    description: "Hanami (???flower viewing???) is the traditional Japanese custom of enjoying the transient beauty of flowers. This often involves a picnic party to enjoy the cherry blossoms as well as food and drinks. People have a Hanami party with friends, family or colleagues under cherry trees and have fun. . ",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663389310/DesPination/kyoto-event4_njc3kv.webp",
    destination_id: d2.id, 
    attraction_id: a15.id
)

e5 = Event.create!(
    name: "Rio Carnival",
    location:"Rio",
    time: "4th September 2022, 8pm",
    description: "The Carnival in Rio de Janeiro is a festival held every year before Lent; it is considered the biggest carnival in the world, with two million people per day on the streets. The first Carnival festival in Rio occurred in 1723. It's a wild celebration full of lively music, dancing, and extravagant costumes in the purpose-built Sambadrome.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663389312/DesPination/rio-event5_stbbqm.jpg",
    destination_id: d3.id, 
    attraction_id: nil 
)


e6 = Event.create!(
    name: "Festival Braseiro",
    location:" Braseiro ",
    time: "14th May 2022, 6pm",
    description: "Rondon??polis Barbecue Festival. Giant structure, with 3 stages for you to have 7 hour`s of music, with open food and open bar Are you ready?Call your friends and come to the barbecue!",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663389311/DesPination/rio-event6_cszzjh.jpg",
    destination_id: d3.id, 
    attraction_id: a27.id
)

e7 = Event.create!(
    name: "Shakespeare in the Park",
    location:"Delacorte Theater",
    time: "4th September 2022, 8pm",
    description: "There's nothing quite like hearing the Bard's immortal words performed outside in New York, with a backdrop of natural splendor and the Belvedere Castle looming in the background like the world's most impressive set decoration. Shakespeare in the Park's popularity means that tickets aren't easy to come by???but if you persevere, you can get seats.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663389312/DesPination/newyork-event7_nlrpzv.jpg",
    destination_id: d4.id, 
    attraction_id: nil 
)


e8 = Event.create!(
    name: "Highline",
    location: " Gaze the HIGH stars in a LINE",
    time: "27th September 2022, 8pm",
    description: "The Amateur Astronomers Association was organized in 1927 to promote the study of Astronomy, by offering free night sky and solar observing, weather permitting. ",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663389311/DesPination/newyork-event8_kzhgvk.jpg",
    destination_id: d4.id, 
    attraction_id: a32.id
)

e9 = Event.create!(
    name: "Garden Town Stellenbosch",
    location:"Stellenbosch, Western Cape",
    time: "20th October 2022, 9am",
    description: "This 10-day long festival sees events and experiences taking place across Stellenbosch and includes a flower parade, presentations and installations from the Western Cape Association for Flower Arrangers, private home and estate show gardens and a range of workshops. From 22 October the Paul Roos Gymnasium hosts the AFGRI Spring Fair which features food, wine and fun activities for the kids.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663389311/DesPination/cape-event9_z5km2r.webp",
    destination_id: d5.id, 
    attraction_id: nil 
)


e10 = Event.create!(
    name: "Oscars Arc WOOF Project",
    location:" The Victoria & Alfred Waterfront ",
    time: "30th July 2022, 9am",
    description: "V&A Waterfront Take the Stage Series is a platform for emerging South African musicians and musical ensembles to showcase their talents at V&A Waterfront. Experience thesemarrakesh emerging artists live for a series of pop-up performances which are free for all to attend",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663389310/DesPination/cape-event10_cltbux.jpg",
    destination_id: d5.id, 
    attraction_id: a37.id
)

e11 = Event.create!(
    name: "Marrakesh & The Sahara",
    location:"Sahara Desert",
    time: "4th September 2022, 8pm",
    description: "Join a group of like-minded women 40+ for and exciting adventure in the Sahara Desert and High Atlas Mountains with Exodus Travels.The grandeur of the Sahara Desert is truly experienced on this trip as we journey from Marrakech across the High Atlas Mountains to the palm groves of the Draa Valley and the gateway to the desert at Zagora.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663389311/DesPination/marrakesh-event11_yq14wz.webp",
    destination_id: d6.id, 
    attraction_id: nil 
)


e12 = Event.create!(
    name: "Marrakech Popular Arts Festival",
    location:" El Badi Palace ",
    time: "1st July 2022, 9am",
    description: "This multi-day festival features artists, dancers, singers, theatre troupes, fortune tellers and snake charmers from all over Morocco as well as Europe, Asia and beyond. Held annually in July, the Arts Festival is one of the most celebrated and popular events in Morocco.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663389310/DesPination/marrakesh-event12_dawypu.jpg",
    destination_id: d6.id, 
    attraction_id: a46.id
)

# adding 2 events per destinations (Florence, Kyoto, Rio, New York, CapeTown, Marrakesh )
e13 = Event.create!(
    name: "Mika at the Mandela Forum",
    location:" Piazza Enrico Berlinguer, 50137 Firenze FI, Italia",
    time: "22nd September 2022, 6pm",
    description: "MIKA - THE MAGIC PIANO is a colorful two-faced gem, with two shows for each city, in different and equally sensational dimensions: one in theaters, one in arenas, for an iconic formula created exclusively for Italy. 
",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663760188/DesPination/florence-event13_t2gjwt.jpg",
    destination_id: d1.id, 
    attraction_id: nil
)
e14 = Event.create!(
    name: "Ethnomusic Film Festival",
    location:" Piazza Enrico Berlinguer, 50137 Firenze FI, Italia",
    time: "1st Nov 2022, 11am",
    description: "Part of Mediateca Toscana???s 50 Days of International Film in Florence, all events for the Ethnomusic Film Festival take place this year at the Cinema La Compagnia. This is the largest film festival of its kind in Italy. Events feature writers, directors, filmmakers and actors.. 
",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663760188/DesPination/florence-event14_adpnh8.jpg",
    destination_id: d1.id, 
    attraction_id: nil
)
e15 = Event.create!(
    name: "Jidai Matsuri ",
    location:" Piazza Enrico Berlinguer, 50137 Firenze FI, Italia",
    time: "24 September 2022, 4pm",
    description: "Jidai Matsuri means The Festival of Ages, which is very fitting. During the procession, you will witness different types of authentic Japanese costumes from the 8th century (Heian Period) to the 19th century (Meiji Period)..
",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663389312/DesPination/rio-event5_stbbqm.jpg",
    destination_id: d2.id, 
    attraction_id: nil
)
e16 = Event.create!(
    name: "Arashiyama Hanatoro",
    location:" Piazza Enrico Berlinguer, 50137 Firenze FI, Italia",
    time: "20 December 2022, 8pm",
    description: "Hanatoro (?????????, Hanat??ro) is a 10-day long illuminations that takes place in Kyoto???s Higashiyama District in March and Arashiyama during December. The event, which translates as ???Flower and Light Road???, see thousands of small lanterns displayed in the local area, but the main attraction is the light-up of Togetsukyo Bridge in the Arashiyama District west of the city center.
",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663760181/DesPination/rio-events17_xqaqcr.jpg",
    destination_id: d2.id, 
    attraction_id: nil
)
e17 = Event.create!(
    name: "Copacabana Reveillon",
    location:" Copacabana Beach",
    time: "21 December 2022, 11pm",
    description: "Celebrating ???Reveillon??? (New Year) in Rio is a truly memorable experience, and Copacabana makes for the perfect base. With several stages to choose from, and non-stop entertainment programmed from 6pm right the way through to the wee hours, not to mention a mesmerising fireworks display at midnight, you won't want to be anywhere else in the world when the clock strikes 12.
",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663760181/DesPination/rio-events17_xqaqcr.jpg",
    destination_id: d3.id, 
    attraction_id: nil
)
e18 = Event.create!(
    name: "Festa Junina",
    location:" Copacabana Beach",
    time: "21 December 2022, 11pm",
    description: "A celebration of Saint John the Baptist, which gives it the other name of Festa de Sao Jo??o. It celebrates rural life with typical clothes, food and dances inside an arraial: a large tent made of raw materials. In big cities, the arraial is usually a building with decorations such as colored flags, checkered table cloths and balloons.
",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663760182/DesPination/rio-event18_uoptzo.jpg",
    destination_id: d3.id, 
    attraction_id: nil
)
e19 = Event.create!(
    name: "Brooklyn Night Market",
    location:" Industry City, 220 36th Street, Brooklyn",
    time: "26 September 2022, 4pm",
    description: "MHG (MASC Hospitality Group) producers of the Uptown Night Market, Bronx Night Market, Harlem Bazaar, Comemundo, & Uptown Oktoberfest are proud to announce the newest member of the family (drumroll, please).
",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663760185/DesPination/newyork-event19_zuto47.webp ",
    destination_id: d4.id, 
    attraction_id: nil
)
e20 = Event.create!(
    name: "Jersey City Wine Fest",
    location:" 1 Audrey Zapp Drive, Jersey City, NJ 07305",
    time: "23 September 2022, 4pm",
    description: "Guests will enjoy wine samples for the entire evening paired with live entertainment, food and interactive games.
",
    image: " https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663760180/DesPination/newyork-event20_rn33zs.jpg",
    destination_id: d4.id, 
    attraction_id: nil
)

e21 = Event.create!(
    name: "Cape Town Oriental Dance Festival ",
    location:" Amphitheatre Stage",
    time: "23 Oct 2022, 4pm",
    description: "Stephanie Singh and Aphrodite Belly Dance Studio (Non-profit organisation register in SA NPO 191-834), welcomes you to the 3rd Cape Town Oriental Dance Festival.
",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663760187/DesPination/capetown-event21_zdn2qi.jpg ",
    destination_id: d5.id, 
    attraction_id: nil
)

e22 = Event.create!(
    name: "The FINAL Feast ft. Craig Lucas, Majozi & Friends ",
    location:" The Cruise Terminal, Victoria & Alfred Waterfront",
    time: "30 Sep 2022, 7pm",
    description: "Since 2015, Cape Town???s winter months have grown to love the Night Feast. What makes the Feast so special? Well just imagine a night of street food indulgence in the heart of this amazing city, combined with incredible music, a splash of wine, a slosh of beer, the stroke of an artist???s brush, or the wonder that comes from the crafts and design of local artisans. 
",
    image: " https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663760179/DesPination/capetown-event22_iflaes.jpg",
    destination_id: d5.id, 
    attraction_id: nil
)

e23 = Event.create!(
    name: "Gnaoua and World Music ",
    location:" Essaouira, Marrakech",
    time: "24 July 2022, 5pm",
    description: "The Gnaoua and World Music Festival was born out of a desire to disseminate Gnaoui culture and music which constitutes one of the components of the city's oral and intangible heritage; all the more so to enrich the experiences of sharing and meeting already initiated between Gnaoua musicians and those from other horizons; of different cultures and trends. 
",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663760182/DesPination/marrakesh-event23_lrj3ts.jpg ",
    destination_id: d6.id, 
    attraction_id: nil
)
e24 = Event.create!(
    name: "Marrakech International Film Festivals ",
    location:" The Cruise Terminal, Victoria & Alfred Waterfront",
    time: "Marrakesh Town Hall",
    description: "HE MARRAKECH INTERNATIONAL FILM FESTIVAL ANNOUNCES THE 24 PROJECTS AND FILMS SELECTED FOR THE 4TH EDITION OF THE ATLAS WORKSHOPS, TO BE HELD ONLINE FROM 22 TO 25 NOVEMBER 2021 
",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663760179/DesPination/marrakesh-event24_s1ukyp.png ",
    destination_id: d6.id, 
    attraction_id: nil
)




puts "created #{Event.count} events"

# ===========================================================

print "creating users...."

User.destroy_all

u1 = User.create! email: 'luke@ga.co', name: 'Luke', password: 'chicken'
u2 = User.create! email: 'kris@ga.co', name: 'Kris', password: 'chicken'
u3 = User.create! email: 'shayni@ga.co', name: 'Shayni', password: 'chicken'


puts "created #{User.count} users"
# =========================================================================

print " Creating planners..."


Planner.destroy_all

p1 = Planner.create!(
    name: "Honeymoon",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663392073/DesPination/planner/honeymoon_hagyrp.png", 
    user_id: u3.id,
    notes: "My long awaited honeymoon after covid yayy!! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras facilisis lacus orci, at facilisis lorem tincidunt vitae. Maecenas ultricies vestibulum blandit. Sed ultrices libero quis faucibus aliquam. Praesent fermentum, velit ac pharetra pellentesque, libero est molestie purus, nec fringilla velit lacus ut sapien. Sed non tincidunt ligula, et eleifend odio. Mauris eu dui ornare ligula congue fringilla. Mauris sit amet magna vel purus ultrices sodales. Sed consectetur pretium nulla, pellentesque tristique nisi dapibus non. "
)

p2 = Planner.create!(
    name: "Girls Trip",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663392073/DesPination/planner/all-girls-trip_btm97n.jpg", 
    user_id: u2.id,
    notes: "Oh my gosh cant wait to be reunited with our girls woohoo Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras facilisis lacus orci, at facilisis lorem tincidunt vitae. Maecenas ultricies vestibulum blandit. Sed ultrices libero quis faucibus aliquam. Praesent fermentum, velit ac pharetra pellentesque, libero est molestie purus, nec fringilla velit lacus ut sapien. Sed non tincidunt ligula, et eleifend odio. Mauris eu dui ornare ligula congue fringilla. Mauris sit amet magna vel purus ultrices sodales. Sed consectetur pretium nulla, pellentesque tristique nisi dapibus non. "
)

p3 = Planner.create!(
    name: "The Big Apple",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663392073/DesPination/planner/big-apple_frnxbb.jpg", 
    user_id: u2.id,
    notes: "Neeeewwww Yoooorrrkkkkkkk Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras facilisis lacus orci, at facilisis lorem tincidunt vitae. Maecenas ultricies vestibulum blandit. Sed ultrices libero quis faucibus aliquam. Praesent fermentum, velit ac pharetra pellentesque, libero est molestie purus, nec fringilla velit lacus ut sapien. Sed non tincidunt ligula, et eleifend odio. Mauris eu dui ornare ligula congue fringilla. Mauris sit amet magna vel purus ultrices sodales. Sed consectetur pretium nulla, pellentesque tristique nisi dapibus non. "
)

p4 = Planner.create!(
    name: "Europe trip",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663392073/DesPination/planner/europe_viwsj9.jpg", 
    user_id: u1.id,
    notes: "What's there to not love about Europe Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras facilisis lacus orci, at facilisis lorem tincidunt vitae. Maecenas ultricies vestibulum blandit. Sed ultrices libero quis faucibus aliquam. Praesent fermentum, velit ac pharetra pellentesque, libero est molestie purus, nec fringilla velit lacus ut sapien. Sed non tincidunt ligula, et eleifend odio. Mauris eu dui ornare ligula congue fringilla. Mauris sit amet magna vel purus ultrices sodales. Sed consectetur pretium nulla, pellentesque tristique nisi dapibus non. "
)

p5 = Planner.create!(
    name: "React teaching at Marrakesh",
    image: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1663588753/Project%202%20Images/react-logo_bqvk7a.png",
    user_id: u1.id,
    notes: "I will be getting paid teaching at Marrakesh wooohooo Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras facilisis lacus orci, at facilisis lorem tincidunt vitae. Maecenas ultricies vestibulum blandit. Sed ultrices libero quis faucibus aliquam. Praesent fermentum, velit ac pharetra pellentesque, libero est molestie purus, nec fringilla velit lacus ut sapien. Sed non tincidunt ligula, et eleifend odio. Mauris eu dui ornare ligula congue fringilla. Mauris sit amet magna vel purus ultrices sodales. Sed consectetur pretium nulla, pellentesque tristique nisi dapibus non. "
)


puts "created #{Planner.count} planner."

p1.attractions << a1 << a2 << a5 << a7 << a9 << a40 << a41 << a44
p1.events << e1 << e2 << e9

p2.attractions << a13 << a12 << a14 << a17 << a20 << a23 << a25 << a27
p2.events << e3 << e6 << e5

p3.attractions << a28 << a29 << a30 << a31 << a33 << a35 << a36
p3.events << e7 << e8

p4.attractions << a1 << a2 << a3 << a4 << a46 << a48 << a52 << a54
p4.events << e11 << e1 << e2 

p5.attractions << a46 << a47 << a48 << a50 << a51 << a52 
p5.events << e11 << e12


# this is for the likes feature
u1.attractions << a1 << a2 << a3
u2.attractions << a1 << a2 << a4 << a5 << a6
u3.attractions << a5 << a6 << a7 << a8

