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

Feed.create_feed("The Verge", "http://www.theverge.com/rss/index.xml", 1,
    "http://cdn0.sbnation.com/imported_assets/845800/verge_badge_color.png")
Feed.create_feed("Engadget", "http://podcasts.engadget.com/rss.xml", 1,
    "http://www.blogcdn.com/www.engadget.com/media/2013/11/engadget-icon-big.png")
Feed.create_feed("LifeHacker", "http://feeds.gawker.com/lifehacker/full.xml", 1,
    "http://www.userlogos.org/files/logos/gumanov/LifeHacker.png")
Feed.create_feed("TechCrunch", "http://feeds.feedburner.com/TechCrunch/", 1,
    "http://blog.newrelic.com/wp-content/uploads/techcrunch_logo.png")
Feed.create_feed("ReadWrite", "http://www.specificfeeds.com/readwrite-s-specific-feed", 1,
    "http://www.mercury-inc.com/assets/images/blog/rw-rebrand_1x.png")
Feed.create_feed("Yahoo Tech", "http://news.yahoo.com/rss/tech", 1,
    "http://s3-us-west-2.amazonaws.com/hypebeast-wordpress/image/2013/09/yahoo-debuts-a-brand-new-logo-0021.jpg")

Feed.create_feed("HBR.org", "http://feeds.harvardbusiness.org/harvardbusiness", 2,
    "https://www.irononsticker.com/images/2012/07/05/Harvard%20Business%20School%20Logo.jpg")
Feed.create_feed("BoF - The Business of Fashion", "http://www.businessoffashion.com/feed", 2,
    "http://www.britishpoloday.com/Pages/ImageManager/Press/India/2014/feb/Business_of_Fashion_Logo.jpg")
Feed.create_feed("Seth Godin", "http://feeds.feedblitz.com/SethsBlog", 2,
    "http://ivanasendecka.files.wordpress.com/2011/03/seth-godin.jpg")
Feed.create_feed("Calculated Risk", "http://feeds.feedburner.com/CalculatedRisk", 2,
    "http://jhaines6.files.wordpress.com/2012/05/calculated-risk.jpeg")
Feed.create_feed("Business Insider", "http://feeds.feedburner.com/businessinsider", 2,
    "http://socialtimes.com/files/2010/03/business-insider.jpg")
Feed.create_feed("Entrepreneur", "http://feeds.feedburner.com/entrepreneur/latest", 2,
    "http://jessetorres.com/wp-content/uploads/2014/07/entrepreneur_media_logo_20121.jpg")

Feed.create_feed("Fresh Home", "http://feeds.feedburner.com/FreshInspirationForYourHome", 3,
    "http://www.freebiewebresources.com/wp-content/uploads/2013/05/Fresh-Home.png")
Feed.create_feed("Fubiz", "http://feeds.feedburner.com/fubiz", 3,
    "http://budillionaire.com/wp-content/uploads/2013/06/budillionaire-fubiz-logo.jpg")
Feed.create_feed("Co.Design", "http://feeds.feedburner.com/fastcodesign/feed", 3,
    "http://learningtoswimagain.com/wp-content/uploads/2012/04/FastCoLogo.jpg")
Feed.create_feed("Young House Love", "http://feeds.feedburner.com/YoungHouseLove", 3,
    "http://3.bp.blogspot.com/_ClSU4iSXUgU/TDlXHCjPUdI/AAAAAAAAFMs/czQjxWqNIkk/S1600-R/YoungHouseLove.png")
Feed.create_feed("Design Milk", "http://feeds.feedburner.com/design-milk", 3,
    "http://blog.tattoosales.com/wp-content/uploads/2012/05/design-milk-custom-tattoo-design-300x300.jpg")
Feed.create_feed("Dezeen", "http://feeds.feedburner.com/dezeen", 3,
    "http://static.dezeen.com/uploads/2007/09/dezeen_dezeens-new-logo_1.jpg")

Feed.create_feed("Online Marketing Blog - TopRank", "http://feeds.feedburner.com/OnlineMarketingSEOBlog", 4,
    "http://www.trademarkia.com/logo-images/top-rank-inc/tr-top-rank-85720663.jpg")
Feed.create_feed("Quick Sprout", "http://feeds.feedburner.com/Quicksprout", 4,
    "http://thediaproject.com/wp-content/uploads/2013/08/quicksprout.gif")
Feed.create_feed("The Econsultancy Blog", "https://econsultancy.com/blog.atom", 4,
    "http://londoncalling.co/images/econsultancy-logo-300x298.jpg")
Feed.create_feed("Marketing Land", "http://feeds.marketingland.com/mktingland", 4,
    "http://marketingland.com/wp-content/ml-loads/2011/12/marketing-land-logo-square.png")
Feed.create_feed("Marketing Pilgrim", "http://feeds.marketingpilgrim.com/marketing-pilgrim", 4,
    "http://www.marketingpilgrim.com/wp-content/uploads/2014/01/Marketing_Pilgrim.jpg")
Feed.create_feed("Marketing Profs Daily", "http://rss.marketingprofs.com/marketingprofs/allinone", 4,
    "http://i.marketingprofs.com/assets/images/slider/pds/ent_jaybird_275x185.jpg")

Feed.create_feed("VentureBeat", "http://feeds.venturebeat.com/VentureBeat", 5,
    "http://www.dwavesys.com/sites/default/files/VB_twitter_logo1.jpg")
Feed.create_feed("AVC", "http://feeds.feedburner.com/avc", 5,
    "http://www.justsayingsolutions.com/wp-content/uploads/2012/11/logo-avc-300x140.png")
Feed.create_feed("Lessons Learned", "http://feeds.feedburner.com/startup/lessons/learned", 5,
    "http://lessonslearnedblogpost.files.wordpress.com/2013/05/lessons-learned-logo-22.jpg")
Feed.create_feed("Both Sides of the Table", "http://feeds.feedburner.com/BothSidesOfTheTable", 5,
    "http://blogtrepreneur.com/wp-content/uploads/2014/05/mark-suster-both-sides-of-the-table.png")
Feed.create_feed("Steve Blank", "http://steveblank.com/feed/", 5,
    "http://images.fastcompany.com/upload/steve-blank-new.jpg")
Feed.create_feed("Feld Thoughts", "http://feeds.feedburner.com/FeldThoughts", 5,
    "http://www.feld.com/wp-content/themes/feld-thoughts/img/logos/foundry_logo.png")

Feed.create_feed("Style Bubble", "http://www.stylebubble.co.uk/feed", 6,
    "http://cdn.spellbrand.com/images/blog/images/Style-Bubble-logo-design.jpg")
Feed.create_feed("Fashion Squad", "http://www.fashionsquad.com/feed/", 6,
    "https://lh6.googleusercontent.com/-FsoIuJkFmtc/UoRN737u-yI/AAAAAAAAD-o/NX3hXlxGFVw/s630-fcrop64=1,2dd30000d0b6ffff/copy-fashionsquad-bw-logo.jpg")
Feed.create_feed("Because I'm Addicted", "http://becauseimaddicted.net/feed", 6,
    "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=38678645")
Feed.create_feed("Bubby and Bean: Living Creatively", "http://feeds.feedburner.com/BubbyAndBean", 6,
    "http://4.bp.blogspot.com/-oAb7fIay1Fw/T5H2vBBvUaI/AAAAAAAAFGo/c1t1ZYCS-Mo/s1600/sponsor_may.png")
Feed.create_feed("Eat.Sleep.Wear.", "http://www.eatsleepwear.com/feed/", 6,
    "http://media-cache-ec0.pinimg.com/avatars/eatsleepwear-1363620386_140.jpg")
Feed.create_feed("Fashion Copious", "http://feeds.feedburner.com/FashionCopious", 6,
    "http://www.luxurydaily.com/wp-content/uploads/2010/12/burberry_fashioncopious_roadblock-1024x921.jpg")

Feed.create_feed("500px/Blog", "http://500px.com/blog/rss", 7,
    "http://wordpress.content.s3.amazonaws.com/wp-content/uploads/2012/12/500px_blog.jpg")
Feed.create_feed("PetaPixel", "http://feeds.feedburner.com/PetaPixel", 7,
    "https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn1/41779_181819638123_2632_n.jpg")
Feed.create_feed("The Big Picture", "http://www.boston.com/bigpicture/index.xml", 7,
    "http://www.sandyhook.org/big-logo.jpg")
Feed.create_feed("Stuck In Customs", "http://feeds.feedburner.com/stuckincustoms", 7,
    "http://www.zigzagonearth.com/wp-content/uploads/2014/04/xstuck_logo.png")
Feed.create_feed("One Big Photo", "http://feeds.feedburner.com/OneBigPhoto", 7,
    "http://upload.wikimedia.org/wikipedia/en/thumb/d/d9/TheBigOneTVLogo.jpg/205px-TheBigOneTVLogo.jpg")
Feed.create_feed("ShootTokyo", "http://feeds.feedburner.com/shoottokyo", 7,
    "http://overgaard.dk/thorstenovergaardcom_copyrighted_graphics/ShootTokyo%20Ad%20LG.jpg")

Feed.create_feed("Smitten Kitchen", "http://feeds.feedburner.com/smittenkitchen", 8,
    "http://smittenkitchen.com/uploads/smittenkitchentrademarkedlogo.jpg")
Feed.create_feed("David Lebovitz", "http://feeds.feedburner.com/davidlebovitz/blog/", 8,
    "http://diannej.com/blog/wp-content/uploads/2012/01/david-lebovitz..jpg")
Feed.create_feed("Joy The Baker", "http://joythebaker.com/feed/", 8,
    "http://static.squarespace.com/static/507dba43c4aabcfd2216a447/t/5342c5c6e4b057b06885960a/1396884934497/")
Feed.create_feed("Serious Eats", "http://feeds.feedburner.com/seriouseatsfeaturesvideos", 8,
    "http://hotbreadkitchen.org/wp-content/uploads/2011/07/Serious-Eats-Logo.jpg")
Feed.create_feed("Chocolate & Zucchini", "http://chocolateandzucchini.com/feed/", 8,
    "http://care2sharebaking.com/assets/images/dsc_1737-450x301.jpg")
Feed.create_feed("Love And Olive Oil", "http://feeds.feedburner.com/LoveAndOliveOil", 8,
    "http://media-cache-ak0.pinimg.com/236x/e1/1e/66/e11e66773dea073b450ed31918fe02c0.jpg")

Feed.create_feed("NYT > Travel", "http://rss.nytimes.com/services/xml/rss/nyt/Travel.xml", 9,
    "http://www.leeabbamonte.com/wp-content/uploads/2008/11/nytimes_logo.bmp")
Feed.create_feed("The Points Guy", "http://thepointsguy.com/feed/", 9,
    "http://www.socaltech.com/images/logos/thepointsguy.png")
Feed.create_feed("Intelligent Travel", "http://intelligenttravel.nationalgeographic.com/author/intelligenttravel/feed/", 9,
    "http://intelligenttravel.nationalgeographic.com/files/2013/09/nat-geo-travel-logo.jpg")
Feed.create_feed("Nomadic Matt's Travel Site", "http://feeds.feedburner.com/MattsTravelSite", 9,
    "http://www.nomadicmatt.com/wp-content/themes/NomadicMattV2/images/Nomadic_Matt-logo.png")
Feed.create_feed("Travel + Leisure", "http://www.travelandleisure.com/toc.atom", 9,
    "http://www.travelandleisure.com/assets/default_tl_image-7d27ef34d86a8a23b22db198c1c15cb6.jpg")
Feed.create_feed("Skift", "http://skift.com/feed/", 9,
    "https://lh6.googleusercontent.com/H9CXyfdkD-kasMGiNV9NFZjPzD_Q370BlMAvmx3Seo-H7ouZpmUfOAOMFlZBRsXlzIy4_rIg53SuSdL6yFa7j8smhXWivn4ZeWcSUsg4n8Ob_Xp9gEOX0T_HKw")

Feed.create_feed("Polygon", "http://www.polygon.com/rss/group/news/index.xml", 10,
    "http://www.brandsoftheworld.com/sites/default/files/polygon-logo-square-jul1612.png")
Feed.create_feed("Kotaku", "http://feeds.gawker.com/kotaku/full", 10,
    "http://www.userlogos.org/files/logos/articed/kotaku_logo.png")
Feed.create_feed("IGN Video Games", "http://feeds.ign.com/ign/all", 10,
    "http://gamingbolt.com/wp-content/uploads/2012/10/ign.jpg")
Feed.create_feed("Joystiq", "http://www.joystiq.com/rss.xml", 10,
    "http://iamryanolsen.com/wp-content/uploads/2013/07/joystiq_news_logo.png")
Feed.create_feed("Game Life", "http://www.wired.com/category/gamelife/feed/", 10,
    "http://now.wms.com/winninglines/wp-content/uploads/2012/09/GOL_Logo.png")
Feed.create_feed("IndieGames", "http://feeds2.feedburner.com/IndependentGaming", 10,
    "http://caribbeancr.edublogs.org/files/2014/08/url-xeu7uh.gif")

Feed.create_feed("99U", "http://feeds.feedburner.com/The99Percent", 11,
    "http://cdn.99u.com/wp-content/themes/99u/assets/img/logo-og.png")
Feed.create_feed("Brain Pickings", "http://feeds.feedburner.com/brainpickings/rss", 11,
    "http://i.kinja-img.com/gawker-media/image/upload/s--T-uvSuC5--/18dykmzrqewftjpg.jpg")
Feed.create_feed("It's Nice That", "http://feeds2.feedburner.com/itsnicethat/SlXC", 11,
    "http://www.nellyben.com/wp-content/uploads/2013/01/itsnicethat_logo.jpg")
Feed.create_feed("CR Blog", "http://www.creativereview.co.uk/cr-blog/feed/", 11,
    "http://ftpmirror.your.org/pub/wikimedia/images/wikipedia/zh/3/35/Cr_logo.jpg")
Feed.create_feed("The Art Of Non-Conformity", "http://chrisguillebeau.com/feed/", 11,
    "http://www.audioeditions.com/audio-book-images/l/The-Art-of-Non-Conformity-1679684.jpg")

Feed.create_feed("Make", "http://feeds.feedburner.com/makezineonline", 12,
    "http://www.domesticsuccess.com/wp-content/uploads/2010/09/MIH-Designs-Logo-final.png")
Feed.create_feed("IKEA Hackers", "http://feeds.feedburner.com/Ikeahacker", 12,
    "http://www.calfinder.com/assets/blog/images/ikea-hackers-logo.jpg")
Feed.create_feed("Hack A Day", "http://fulltextrssfeed.com/www.hackaday.com/rss.xml", 12,
    "http://hosted.hackaday.com/Hackaday_Logo.svg")
Feed.create_feed("Oh Happy Day!", "http://feeds.feedburner.com/ohhappyday/XziI", 12,
    "http://www.ateneus.cat/wp-content/uploads/happy-day1.jpg")
Feed.create_feed("How To Of The Day", "http://www.wikihow.com/feed.rss", 12,
    "http://www.finedayrecords.com/Fine_Day_logo72dpi_small.jpg")
Feed.create_feed("WonderHowTo", "http://www.wonderhowto.com/rss.xml", 12,
    "http://cnet2.cbsistatic.com/hub/i/2008/05/30/a55ccb06-f4d6-11e2-8c7c-d4ae52e62bcc/2b69908f9a4649e32fdf3e3b243464e0/WonderHowTo-logo.png")

Feed.create_feed("CNN", "http://rss.cnn.com/rss/cnn_topstories.rss", 13,
    "http://www.logodesignlove.com/images/monograms/cnn-logo.jpg")
Feed.create_feed("The New York Times", "http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml", 13,
    "http://www.leeabbamonte.com/wp-content/uploads/2008/11/nytimes_logo.bmp")
Feed.create_feed("NPR News", "http://www.npr.org/rss/rss.php?id=1001", 13,
    "http://cdn.marketplaceimages.windowsphone.com/v8/images/50207bc1-6b18-404f-96a8-75399660aa76?imageType=ws_icon_large")
Feed.create_feed("ABC News", "http://feeds.abcnews.com/abcnews/topstories", 13,
    "http://img4.wikia.nocookie.net/__cb20130610165528/logopedia/images/c/cd/ABC_News_2013.png")
Feed.create_feed("Le Monde", "http://rss.lemonde.fr/c/205/f/3050/index.rss", 13,
    "https://anr-search.labri.fr/web/wp-content/uploads/2012/06/Le_Monde_logo-e1340633163907-150x117.png")
Feed.create_feed("BBC", "http://feeds.bbci.co.uk/news/rss.xml", 13,
    "http://fontmeme.com/images/BBC-Logo.jpg")

Feed.create_feed("Freakonomics", "http://feeds.feedburner.com/freakonomics", 14,
    "http://blogs.shrewsbury.ac.th/readingtheworld/files/2012/08/apple_orange_itunes.jpg")
Feed.create_feed("Get Rick Slowly", "http://feeds.feedburner.com/getrichslowly", 14,
    "http://www.getrichslowly.org/images/grs-fb.jpg")
Feed.create_feed("The Simple Dollar", "http://feeds.feedburner.com/thesimpledollar", 14,
    "https://finovera.com/blog/wp-content/uploads/2013/08/the-simple-dollar-logo.png")
Feed.create_feed("Mish's Global Economic", "http://feeds2.feedburner.com/MishsGlobalEconomicTrendAnalysis", 14,
    "https://cdn1.lockerdome.com/uploads/d7c307a129c506607755df7889175a120a9bfe791a49382d45a0e67b70fd0472_large")
Feed.create_feed("The Economist", "http://www.economist.com/feeds/print-sections/79/finance-and-economics.xml", 14,
    "http://upload.wikimedia.org/wikipedia/commons/e/e1/The_Economist_Logo.png")
Feed.create_feed("Paul Krugman", "http://topics.nytimes.com/top/opinion/editorialsandoped/oped/columnists/paulkrugman/index.html?rss=1", 14,
    "http://images.bwbx.io/cms/2013-09-11/12_Krugman38__01__630x420.jpg")

Feed.create_feed("Empire News", "http://rss.feedsportal.com/c/592/f/7507/index.rss", 15,
    "http://www.propaintball.com/wp-content/uploads/2011/07/logo_empire.jpg")
Feed.create_feed("FirstShowing.Net", "http://www.firstshowing.net/feed/", 15,
    "http://2.bp.blogspot.com/-1J5WHeQnI9E/UQrVE9Sp5XI/AAAAAAAASq8/MHfj8s33ZPo/s1600/firstshowing.png")
Feed.create_feed("Entertainment Weekly", "http://feeds.ew.com/entertainmentweekly/latest", 15,
    "https://lh4.googleusercontent.com/-anQRMZBwse8/AAAAAAAAAAI/AAAAAAAAAv0/7nTe_-RVXus/s591-c-no/photo.jpg")
Feed.create_feed("Observations On Film Art", "http://www.davidbordwell.net/blog/feed/", 15,
    "http://highered.mheducation.com/sites/dl/free/0073535060/cover/Bordwell_CvrLg.jpg")
Feed.create_feed("Moviefone News", "http://news.moviefone.com/rss.xml", 15,
    "http://www.thewrap.com/sites/default/files/03-moviefone_0.jpg")
Feed.create_feed("ScreenCrave.com", "http://screencrave.com/feed/", 15,
    "http://ak.scr.imgfarm.com/holi/md/VdayMovies.jpg")

Feed.create_feed("Youtube - Most Popular", "https://gdata.youtube.com/feeds/api/standardfeeds/most_popular", 16,
    "http://buy-pva.com/wp-content/uploads/2013/03/Youtube_logo-tn1.png")