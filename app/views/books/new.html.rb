<h1>新規投稿</h1>
<% if @books.errors.any? %>
  <%= @books.errors.count %>件のエラーが発生しました
  <ul>
    <% @books.errors.full_messages.each do  |message| %>
      <li><%= message %></li>
    <% end %>
  </ul>
<% end %>

<%= form_with model: @books, url:'/books' do |f| %>
  <h4>タイトル</h4>
  <%= f.text_field :title %>
  <h4>本文</h4>
  <%= f.text_area :body %>
  <h4>画像</h4>
  <%= f.file_field :image, accept: "image/*" %>
  <%= f.submit '投稿' %>
<% end %>