require 'pony'

Pony.mail({ :to => 'service@staging.berkleemusic.com',
  :from => 'lrains@berklee.edu',
  :sender => 'lrains@berklee.edu',
  :subject => 'hi',
  :body => 'Hello there from Pony. Message #99999',
  :via => :smtp,
  :via_options => {
    :address=> 'smtp.berkleemusic.com',
    :port=> '25',
    :enable_starttls_auto=> false
  },
  :headers=>{
    "Return-Path" => "joe@myhostingcompany.com"
    }
  })
  
  
require 'pony'

Pony.mail({ :to => 'service@staging.berkleemusic.com',
  :from => 'lrains@berkleemusic.com',
  :sender => 'lrains@berkleemusic.com',
  :subject => 'hi',
  :body => 'Hello there from Pony. Message #171',
  :via => :smtp,
  :via_options => {
    :address=> 'smtp.berkleemusic.com',
    :port=> '25'
  }
  })
  
require 'pony'
Pony.mail({ :to => 'advisors@staging.berkleemusic.com',
  :from => 'lrains@berkleemusic.com',
  :sender => 'lrains@berkleemusic.com',
  :subject => 'hi',
  :body => 'Hello there from Pony. Message #171',
  :via => :smtp,
  :via_options => {
    :address=> 'smtp.berkleemusic.com',
    :port=> '25',
    :enable_starttls_auto=> false
  }
  })
  
  
  require 'pony'
  Pony.mail({ :to => 'advisors@staging.berkleemusic.com',
    :from => 'joe@myhosting.com',
    :sender => 'joe@myhosting.com',
    :subject => 'hi',
    :body => 'Hello there from Pony. Message #171',
    :via => :smtp,
    :via_options => {
      "Return-Path" => 'joe@myhosting.com',
      :address=> 'smtp.berkleemusic.com',
      :port=> '25',
      :enable_starttls_auto=> false
    }
  })
  
  require 'pony'
  Pony.mail({ :to => 'finance@staging.berkleemusic.com',
    :from => 'joe@myhosting.com',
    :sender => 'joe@myhosting.com',
    :subject => 'hi',
    :body => 'Hello there from Pony. Message #171',
    :via => :smtp,
    :via_options => {
      "Return-Path" => 'joe@myhosting.com',
      :address=> 'smtp.berkleemusic.com',
      :port=> '25',
      :enable_starttls_auto=> false
    }
  })
  
   require 'pony'
   Pony.mail({ :to => 'advisors@staging.berkleemusic.com',
     :from => 'lrains@berkleemusic.com',
     :subject => 'hi',
     :body => 'Hello there from Pony. Message #888',
     :via => :smtp,
     :via_options => {
       :address=> 'smtp.berkleemusic.com',
       :port=> '25',
       :enable_starttls_auto=> false
     },
     :headers=>{
       "Return-Path" => "joe@myhostingcompany.com",
       "X-My-Custom-Header" => "my cool custom header"
       }
  })
  
  
   require 'pony'
   Pony.mail({ :to => 'advisors@staging.berkleemusic.com',
     :from => 'aperrier@berkleemusic.com',
     :subject => 'hi',
     :body => 'Hello there from Pony. Message from Alex',
     :via => :smtp,
     :via_options => {
       :address=> 'smtp.berkleemusic.com',
       :port=> '25',
       :enable_starttls_auto=> false
     },
     :headers=>{
       "Return-Path" => "joe@myhostingcompany.com",
       "X-My-Custom-Header" => "my cool custom header"
       }
  })
  
   require 'pony'
   Pony.mail({ :to => 'feedback@staging.berkleemusic.com',
     :from => 'aperrier@berkleemusic.com',
     :subject => 'hi',
     :body => 'Hello there from Pony. Message from Alex',
     :via => :smtp,
     :via_options => {
       :address=> 'smtp.berkleemusic.com',
       :port=> '25',
       :enable_starttls_auto=> false
     },
     :headers=>{
       "Return-Path" => "joe@myhostingcompany.com",
       "X-My-Custom-Header" => "my cool custom header"
       }
  })
  
   require 'pony'
   Pony.mail({ :to => 'registrar@staging.berkleemusic.com',
     :from => 'aperrier@berkleemusic.com',
     :subject => 'hi',
     :body => 'Hello there from Pony. Message from Alex',
     :via => :smtp,
     :via_options => {
       :address=> 'smtp.berkleemusic.com',
       :port=> '25',
       :enable_starttls_auto=> false
     },
     :headers=>{
       "Return-Path" => "joe@myhostingcompany.com",
       "X-My-Custom-Header" => "my cool custom header"
       }
  })
  
   require 'pony'
   Pony.mail({ :to => 'finance@staging.berkleemusic.com',
     :from => 'aperrier@berkleemusic.com',
     :subject => 'hi',
     :body => 'Hello there from Pony. Message from Alex',
     :via => :smtp,
     :via_options => {
       :address=> 'smtp.berkleemusic.com',
       :port=> '25',
       :enable_starttls_auto=> false
     },
     :headers=>{
       "Return-Path" => "joe@myhostingcompany.com",
       "X-My-Custom-Header" => "my cool custom header"
       }
  })
  