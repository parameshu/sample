<p id="notice"><%= notice %></p>

<p>
  <b>Name:</b>
  <%= @user.name %>
</p>

<p>
  <b>Email:</b>
  <%= @user.email %>
</p>

<p>
  <b>Password:</b>
  <%= @user.password %>
</p>

<p>
  <b>Conformpwd:</b>
  <%= @user.conformpwd %>
</p>


<%= link_to 'Edit', edit_user_path(@user) %> |
<%= link_to 'Back', users_path %>
