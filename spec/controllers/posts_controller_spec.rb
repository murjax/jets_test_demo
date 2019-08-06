describe PostsController, type: :controller do
  it "index returns a success response" do
    get '/posts'
    expect(response.status).to eq 200
  end
end
