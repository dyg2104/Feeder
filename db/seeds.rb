Category.create({ title: "Tech", image_url: "https://s3.feedly.com/explore/tech.jpg"})
Category.create({ title: "Business", image_url: "https://s3.feedly.com/explore/business.jpg"})
Category.create({ title: "Design", image_url: "https://s3.feedly.com/explore/design.jpg"})
Category.create({ title: "Marketing", image_url: "https://s3.feedly.com/explore/marketing.jpg"})
Category.create({ title: "Startups", image_url: "http://s3.feedly.com/explore/entrepreneurship.jpg"})
Category.create({ title: "Fashion", image_url: "https://s3.feedly.com/explore/fashion.jpg"})
Category.create({ title: "Photography", image_url: "https://s3.feedly.com/explore/photography.jpg"})
Category.create({ title: "Cooking", image_url: "https://s3.feedly.com/explore/cooking.jpg"})
Category.create({ title: "Travel", image_url: "https://s3.feedly.com/explore/travel.jpg"})
Category.create({ title: "Gaming", image_url: "https://s3.feedly.com/explore/gaming.jpg"})
Category.create({ title: "Inspiration", image_url: "https://s3.feedly.com/explore/inspiration.jpg"})
Category.create({ title: "Do It Yourself", image_url: "http://s3.feedly.com/explore/do-it-yourself.jpg"})
Category.create({ title: "News", image_url: "http://s3.feedly.com/explore/world-news.jpg"})
Category.create({ title: "Finance", image_url: "https://s3.feedly.com/explore/finance.jpg"})
Category.create({ title: "Film", image_url: "http://s3.feedly.com/explore/cinema.jpg"})
Category.create({ title: "Youtube", image_url: "http://s3.feedly.com/explore/youtube.jpg"})

Feed.create_feed("The Verge", "http://www.theverge.com/rss/index.xml", 1)
Feed.create_feed("Engadget", "http://podcasts.engadget.com/rss.xml", 1)
Feed.create_feed("LifeHacker", "http://feeds.gawker.com/lifehacker/full.xml", 1)
Feed.create_feed("TechCrunch", "http://feeds.feedburner.com/TechCrunch/", 1)
Feed.create_feed("ReadWrite", "http://www.specificfeeds.com/readwrite-s-specific-feed", 1)
Feed.create_feed("Yahoo Tech", "http://news.yahoo.com/rss/tech", 1)

Feed.create_feed("HBR.org", "http://feeds.harvardbusiness.org/harvardbusiness", 2)
Feed.create_feed("BoF - The Business of Fashion", "http://www.businessoffashion.com/feed", 2)
Feed.create_feed("Seth Godin", "http://feeds.feedblitz.com/SethsBlog", 2)
Feed.create_feed("Calculated Risk", "http://feeds.feedburner.com/CalculatedRisk", 2)
Feed.create_feed("Business Insider", "http://feeds.feedburner.com/businessinsider", 2)
Feed.create_feed("Entrepreneur", "http://feeds.feedburner.com/entrepreneur/latest", 2)

Feed.create_feed("Fresh Home", "http://feeds.feedburner.com/FreshInspirationForYourHome", 3)
Feed.create_feed("Fubiz", "http://feeds.feedburner.com/fubiz", 3)
Feed.create_feed("Co.Design", "http://feeds.feedburner.com/fastcodesign/feed", 3)
Feed.create_feed("Young House Love", "http://feeds.feedburner.com/YoungHouseLove", 3)
Feed.create_feed("Design Milk", "http://feeds.feedburner.com/design-milk", 3)
Feed.create_feed("Dezeen", "http://feeds.feedburner.com/dezeen", 3)

Feed.create_feed("Online Marketing Blog - TopRank", "http://feeds.feedburner.com/OnlineMarketingSEOBlog", 4)
Feed.create_feed("Quick Sprout", "http://feeds.feedburner.com/Quicksprout", 4)
Feed.create_feed("The Econsultancy Blog", "https://econsultancy.com/blog.atom", 4)
Feed.create_feed("Marketing Land", "http://feeds.marketingland.com/mktingland", 4)
Feed.create_feed("Marketing Pilgrim", "http://feeds.marketingpilgrim.com/marketing-pilgrim", 4)
Feed.create_feed("Marketing Profs Daily", "http://rss.marketingprofs.com/marketingprofs/allinone", 4)

Feed.create_feed("VentureBeat", "http://feeds.venturebeat.com/VentureBeat", 5)
Feed.create_feed("AVC", "http://feeds.feedburner.com/avc", 5)
Feed.create_feed("Lessons Learned", "http://feeds.feedburner.com/startup/lessons/learned", 5)
Feed.create_feed("Both Sides of the Table", "http://feeds.feedburner.com/BothSidesOfTheTable", 5)
Feed.create_feed("Steve Blank", "http://steveblank.com/feed/", 5)
Feed.create_feed("Feld Thoughts", "http://feeds.feedburner.com/FeldThoughts", 5)

Feed.create_feed("Style Bubble", "http://www.stylebubble.co.uk/feed", 6)
Feed.create_feed("Fashion Squad", "http://www.fashionsquad.com/feed/", 6)
Feed.create_feed("Because I'm Addicted", "http://becauseimaddicted.net/feed", 6)
Feed.create_feed("Bubby and Bean: Living Creatively", "http://feeds.feedburner.com/BubbyAndBean", 6)
Feed.create_feed("Eat.Sleep.Wear.", "http://www.eatsleepwear.com/feed/", 6)
Feed.create_feed("Fashion Copious", "http://feeds.feedburner.com/FashionCopious", 6)

Feed.create_feed("500px/Blog", "http://500px.com/blog/rss", 7)
Feed.create_feed("PetaPixel", "http://feeds.feedburner.com/PetaPixel", 7)
Feed.create_feed("The Big Picture", "http://www.boston.com/bigpicture/index.xml", 7)
Feed.create_feed("Stuck In Customs", "http://feeds.feedburner.com/stuckincustoms", 7)
Feed.create_feed("One Big Photo", "http://feeds.feedburner.com/OneBigPhoto", 7)
Feed.create_feed("ShootTokyo", "http://feeds.feedburner.com/shoottokyo", 7)

Feed.create_feed("Smitten Kitchen", "http://feeds.feedburner.com/smittenkitchen", 8)
Feed.create_feed("David Lebovitz", "http://feeds.feedburner.com/davidlebovitz/blog/", 8)
Feed.create_feed("Joy The Baker", "http://joythebaker.com/feed/", 8)
Feed.create_feed("Serious Eats", "http://feeds.feedburner.com/seriouseatsfeaturesvideos", 8)
Feed.create_feed("Chocolate & Zucchini", "http://chocolateandzucchini.com/feed/", 8)
Feed.create_feed("Love And Olive Oil", "http://feeds.feedburner.com/LoveAndOliveOil", 8)

Feed.create_feed("NYT > Travel", "http://rss.nytimes.com/services/xml/rss/nyt/Travel.xml", 9)
Feed.create_feed("The Points Guy", "http://thepointsguy.com/feed/", 9)
Feed.create_feed("Intelligent Travel", "http://intelligenttravel.nationalgeographic.com/author/intelligenttravel/feed/", 9)
Feed.create_feed("Nomadic Matt's Travel Site", "http://feeds.feedburner.com/MattsTravelSite", 9)
Feed.create_feed("Travel + Leisure", "http://www.travelandleisure.com/toc.atom", 9)
Feed.create_feed("Skift", "http://skift.com/feed/", 9)

Feed.create_feed("Polygon", "http://www.polygon.com/rss/group/news/index.xml", 10)
Feed.create_feed("Kotaku", "http://feeds.gawker.com/kotaku/full", 10)
Feed.create_feed("IGN Video Games", "http://feeds.ign.com/ign/all", 10)
Feed.create_feed("Joystiq", "http://www.joystiq.com/rss.xml", 10)
Feed.create_feed("Game Life", "http://www.wired.com/category/gamelife/feed/", 10)
Feed.create_feed("IndieGames", "http://feeds2.feedburner.com/IndependentGaming", 10)

Feed.create_feed("99U", "http://feeds.feedburner.com/The99Percent", 11)
Feed.create_feed("Poppytalk", "http://feeds.feedburner.com/blogspot/ISuVv", 11)
Feed.create_feed("Brain Pickings", "http://feeds.feedburner.com/brainpickings/rss", 11)
Feed.create_feed("It's Nice That", "http://feeds2.feedburner.com/itsnicethat/SlXC", 11)
Feed.create_feed("CR Blog", "http://www.creativereview.co.uk/cr-blog/feed/", 11)
Feed.create_feed("The Art Of Non-Conformity", "http://chrisguillebeau.com/feed/", 11)

Feed.create_feed("Make", "http://feeds.feedburner.com/makezineonline", 12)
Feed.create_feed("IKEA Hackers", "http://feeds.feedburner.com/Ikeahacker", 12)
Feed.create_feed("Hack A Day", "http://fulltextrssfeed.com/www.hackaday.com/rss.xml", 12)
Feed.create_feed("Oh Happy Day!", "http://feeds.feedburner.com/ohhappyday/XziI", 12)
Feed.create_feed("How To Of The Day", "http://www.wikihow.com/feed.rss", 12)
Feed.create_feed("WonderHowTo", "http://www.wonderhowto.com/rss.xml", 12)

Feed.create_feed("CNN", "http://rss.cnn.com/rss/cnn_topstories.rss", 13)
Feed.create_feed("The New York Times", "http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml", 13)
Feed.create_feed("NPR News", "http://www.npr.org/rss/rss.php?id=1001", 13)
Feed.create_feed("ABC News", "http://feeds.abcnews.com/abcnews/topstories", 13)
Feed.create_feed("Le Monde", "http://rss.lemonde.fr/c/205/f/3050/index.rss", 13)
Feed.create_feed("BBC", "http://feeds.bbci.co.uk/news/rss.xml", 13)

Feed.create_feed("Freakonomics", "http://feeds.feedburner.com/freakonomics", 14)
Feed.create_feed("Get Rick Slowly", "http://feeds.feedburner.com/getrichslowly", 14)
Feed.create_feed("The Simple Dollar", "http://feeds.feedburner.com/thesimpledollar", 14)
Feed.create_feed("Mish's Global Economic", "http://feeds2.feedburner.com/MishsGlobalEconomicTrendAnalysis", 14)
Feed.create_feed("The Economist", "http://www.economist.com/feeds/print-sections/79/finance-and-economics.xml", 14)
Feed.create_feed("Paul Krugman", "http://topics.nytimes.com/top/opinion/editorialsandoped/oped/columnists/paulkrugman/index.html?rss=1", 14)

Feed.create_feed("Empire News", "http://rss.feedsportal.com/c/592/f/7507/index.rss", 15)
Feed.create_feed("FirstShowing.Net", "http://www.firstshowing.net/feed/", 15)
Feed.create_feed("Entertainment Weekly", "http://feeds.ew.com/entertainmentweekly/latest", 15)
Feed.create_feed("Observations On Film Art", "http://www.davidbordwell.net/blog/feed/", 15)
Feed.create_feed("Moviefone News", "http://news.moviefone.com/rss.xml", 15)
Feed.create_feed("ScreenCrave.com", "http://screencrave.com/feed/", 15)

Feed.create_feed("Youtube - Most Popular", "https://gdata.youtube.com/feeds/api/standardfeeds/most_popular", 16)