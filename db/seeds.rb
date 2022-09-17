print "Creating destinations..."

Destination.destroy_all

d1 = Destination.create!(
    name: "Florence",
    description: "Cradle of the Renaissance, romantic, enchanting and utterly irresistible, Florence (Firenze) is a place to feast on world-class art and gourmet Tuscan cuisine.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663330552/DesPination/florence_mnr9j0.webp",
    address: "your home town",
    longitude: 11.2558,
    latitude: 123.1
)

d2 = Destination.create!(
    name: "Kyoto",
    description: "Kyoto is old Japan writ large: atmospheric temples, sublime gardens and traditional teahouses.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663330300/DesPination/kyoto_bbuzyx.jpg",
    address: "your home town",
    longitude: 123,
    latitude: 123
)

d3 = Destination.create!(
    name: "Rio de Janeiro",
    description: "Golden beaches and lush mountains, samba-fueled nightlife and spectacular football matches: welcome to the Cidade Maravilhosa (Marvelous City).",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663330299/DesPination/rio_umj4uq.webp",
    address: "your home town",
    longitude: 123,
    latitude: 123
)

d4 = Destination.create!(
    name: "New York",
    description: "Epicenter of the arts. Architectural darling. Dining and shopping capital. Trendsetter. New York City wears many crowns, and spreads an irresistible feast for all.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663330301/DesPination/newyork_nx3auq.webp",
    address: "your home town",
    longitude: 123,
    latitude: 123
)
d5 = Destination.create!(
    name: "Cape Town",
    description: "A coming-together of cultures, cuisines and landscapes, there's nowhere quite like Cape Town, a singularly beautiful city crowned by the magnificent Table Mountain National Park.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663330303/DesPination/capetown_fcz8kd.jpg",
    address: "your home town",
    longitude: 123,
    latitude: 123
)

d6 = Destination.create!(
    name: "Marrakesh",
    description: "Prepare for your senses to be slapped. Marrakesh's heady sights and sounds will dazzle, frazzle and enchant. Put on your babouches (leather slippers) and dive right in.",
    image: "https://res.cloudinary.com/dwmvmdhlu/image/upload/v1663330301/DesPination/Marrakesh_cdleep.jpg",
    address: "your home town",
    longitude: 123,
    latitude: 123
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
    address: "To be added",
    longitude: 12.34, 
    latitude: 23.43,
    destination_id: d1.id
)

a2 = Attraction.create!(
    name: "Ponte Vecchio",
    description: "Dating from 1345, iconic Ponte Vecchio was the only Florentine bridge to survive destruction at the hands of retreating German forces in 1944. Above jewellery shops on the eastern side, the Corridoio Vasariano is a 16th-century passageway between the Uffizi and Palazzo Pitti that runs around, rather than through, the medieval Torre dei Mannelli at the bridge's southern end.",
    category_id: c1.id,
    address: "To be added",
    longitude: 12.34, 
    latitude: 23.43,
    destination_id: d1.id
)

a3 = Attraction.create!(
    name: "Uffizi Gallery",
    description: "Home to the world's greatest collection of Italian Renaissance art, Florence's premier gallery occupies the vast U-shaped Palazzo degli Uffizi, built as government offices. The collection, bequeathed to the city by the Medici family in 1743 on condition that it never leave Florence, contains some of Italy's best-known paintings, including a room full of Botticelli masterpieces.",
    category_id: c1.id,
    address: "To be added",
    longitude: 12.34, 
    latitude: 23.43,
    destination_id: d1.id
)

a4 = Attraction.create!(
    name: "Giardino Bardini",
    description: "This 17th-century villa and garden was named after 19th-century antiquarian art collector Stefano Bardini, who bought it in 1913 and restored its ornamental medieval garden. It has all the features of a quintessential Tuscan garden, including artificial grottoes, orangery, marble statues and fountains. Inside the villa, the small Museo Pietro Annigoni displays works by Italian painter Pietro Annigoni. End with city views from the romantic roof terrace.",
    category_id: c2.id,
    address: "To be added",
    longitude: 12.34, 
    latitude: 23.43,
    destination_id: d1.id
)

a5 = Attraction.create!(
    name: "Folon e il Giardino delle Rose",
    description: "The Rose Garden in Florence is a place of extraordinary beauty, where you can see for free many different types of roses and other plants. That's why it is the ideal place for a romantic promenade or for a break in a green oasis set in the heart of Florence.",
    category_id: c2.id,
    address: "To be added",
    longitude: 12.34, 
    latitude: 23.43,
    destination_id: d1.id
)

a6 = Attraction.create!(
    name: "Parco del cascine",
    description: "Florence's largest park is dotted with playgrounds and is a great place to let the little 'uns loose. Families take over at weekends and the park is a colourful scene with rollerbladers, kite-flyers, joggers and kids on bikes. In summer you can also use Le Pavoniere swimming pool..",
    category_id: c2.id,
    address: "To be added",
    longitude: 12.34, 
    latitude: 23.43,
    destination_id: d1.id
)


a7 = Attraction.create!(
    name: "La Giostra",
    description: "Run by an Austrian royal family, the space boasts the perfect ambience for a romantic night out with candle-lit tables and deep red wines in beautiful glass decanters. Given the restaurant's popularity, make a reservation in advance.",
    category_id: c3.id,
    address: "To be added",
    longitude: 12.34, 
    latitude: 23.43,
    destination_id: d1.id
)

a8 = Attraction.create!(
    name: "Trattoria Marione",
    description: "Old-school style in ambience and cooking techniques, this classic trattoria is perennially filled with Italians on their lunch break or out to dinner with friends. Make sure to order the seasonal specials and ask for the waiter's recommendations. Do call in advance to secure yourself a table, especially during Italian holidays.",
    category_id: c3.id,
    address: "To be added",
    longitude: 12.34, 
    latitude: 23.43,
    destination_id: d1.id
)

a9 = Attraction.create!(
    name: "Perseus",
    description: "If you're looking for steak, it's worth the effort to get out to Perseus. Located just past the old walls of the city centre, this is the go-to destination for Florentines craving steak. Everything from the decor to the menu reflects a devotion to tradition.",
    category_id: c3.id,
    address: "To be added",
    longitude: 12.34, 
    latitude: 23.43,
    destination_id: d1.id
)

# Attractions for Kyoto a10 - a18

a10 = Attraction.create!(
    name: "Fushimi Inari-Taisha",
    description: "ith seemingly endless arcades of vermilion torii (shrine gates) spread across a thickly wooded mountain, this vast shrine complex is a world unto its own. It is, quite simply, one of the most impressive and memorable sights in Kyoto.",
    category_id: c1.id,
    address: "To be added",
    longitude: 12.34, 
    latitude: 23.43,
    destination_id: d2.id

)

puts "created #{Attraction.count} attractions"


