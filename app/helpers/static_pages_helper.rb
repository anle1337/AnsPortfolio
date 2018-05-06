module StaticPagesHelper
  def seo_tags(title, content)
    provide(:title, title)
    provide(:meta_name, "description")
    provide(:content, content)
  end
end


  def social_media_links
    [["linkedin", "http://www.linkedin.com/in/anhoangle"],
     ["github", "http://www.github.com/anle90"],
     ["facebook", "http://www.facebook.com/anle0704"],
     ["twitter", "http://www.twitter.com/anle90"]]
  end

  def projects

    [
      ["WalkTalk", "http://walktalk.io", "This is my largest project with hundreds of users and thousands of pageviews.", "A Networking web app that matches you up with another professional for coffee during lunch time and is based on your preferences! If your preference is a designer, then that's who you'll meet a"],
      ["Mechina", "http://www.mechina.io", "This is my most profitable project with hundreds of users and thousands of pageviews.", "Designed database for efficiency, scalablilty and removed any n+1 query problems. Stripe for Payment, Edmunds API to assist in pricing algorithm. SEO for FB, Google, and Twitter. User and GuestUser system implemented and allowed booking services without an account."],
      ["Blog", "http://ansrailsblog.herokuapp.com/", "This is my blog, not as updated, but has most of the features of a typical web app.", "Dashboard set up for User accounts and comments. Also used Devise for User Authentication." ],
      ["DevWeek16Hackathon", "http://devweek16.herokuapp.com/total_tweets", "This web app takes a twitter hashtag and scrapes tweets for hashtags and words that are most used with the initial hashtag. Won 2nd place in the Dev Week 16 Redis Labs Sponser Challenge.", "Worked with 4 other teammates.I split up the project tasks between everyone. I integrated Twitter API, creating an algorithm to cache tweets into Redis, and ultimately integrating everyone's tasks and deploy the site. We won 2nd place in the Redis Challenge. "],
      ["APIDemos", "http://apifun.herokuapp.com/", "This is a demo of some API integrations like Stripe, Yelp, or YodaSpeaks.", "Showcase my use of various APIs like: Stripe, Yelp, YodaSpeaks, and BambooHR (xml)"],
      ["MsHoangsCatering", "http://www.mshoangcatering.com/", "My very first project when I started programming, not A+ quality but very sentimental.", "First real project using Rails and it was a blast!!"]
    ]
  end

  def front_end
    "HTML, CSS, SASS, BOOTSTRAP, FOUNDATION, REACT, JAVASCRIPT, JQUERY,  PHOTOSHOP".split(",")
  end

  def back_end
    "RUBY, RAILS, C, DEVISE, RSPEC, CUCUMBER, postgreSQL, HEROKU, AWS S3, STRIPE API, TWITTER API, INSTAGRAM API, YELP API, ANY API".split(",")
  end