require "sinatra"
require "active_record"

=begin
ActiveRecord::Base.establish_connection(  
    adapter: 'mysql2',  
    encode: 'utf8',  
    host: 'localhost',  
    username: 'root',  
    password: '123456',  
    database: 'sinatra_user'  
)  
=end

class User < ActiveRecord::Base
	validates :name, presence:true, length:{maximum:50}
	has_secure_password
     validates :password, length: { minimum:6 }
 end
