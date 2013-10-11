# This index controller with just have the index route; displaying our homepage

#Homepage
get '/' do
  # Look in app/views/index.erb
  erb :index
end

#New post page
get '/new_post' do
  erb :new_post
end

# Create a new post
post '/new_post' do
  @post = Post.create(title: params[:title], body: params[:body], tag: params[:tag])
  redirect '/posts'

end

#Show me all the posts
get '/posts' do
  @posts = Post.all
  erb :show_all_posts
end

# Show me a particular post
get '/post/:id' do
  @post = Post.find(params[:id])
  erb :post
end

# Edit an existing post
get '/post/:id/edit' do
  @post = Post.find(params[:id])
  erb :edit_page
end

# Delete an existing post
get '/post/:id/delete' do
  @post = Post.find(params[:id])
  @post.destroy
  redirect :posts
end
