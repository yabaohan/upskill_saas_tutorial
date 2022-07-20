Rails.application.routes.draw do
   root to: 'pages#home'
   get 'about' , to:'pages#about'
   resources :contacts, only: :create
   get 'contact-us' , to: 'contacts#new', as: 'new-contact'
end

#Databases:
#A place to permanently store information 
#Exist on servers/can communicate with rails app
#Spreadsheets with columns and rows
#Accessible with languages like MYSQL

#Inside servers, there are software called Web Servers (e.g puma) that communicates with the
#client's web browser. Web servers don't come up with content, they send it. Content
#is created through the web application (php, python, ruby on rails)
#web servers and web browsers use HTTP to communicate

#REST (Reprensational State Transfer)
#refer to 'things' on the web as resources
#Four things you can do with each resource:
# - Create (Post Add a profile pic, submit a post)
# - Read (i.e View it)
# - Update (Changing profile pic/status)
# - Delete (Delete a post/pic, etc.)