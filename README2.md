new form- lessons 
<ul>
<% if @lesson.errors.any? %>
  <% @lesson.errors.full_messages.each do |err| %>
    <li style="color:red"> <%=err %></li>
    </ul>
    <%end%>
 <%end %>
<%= form_for @lesson do |f| %>
 
   Date: <%=f.date_field :date %> <br />
 
   <br/>
   Time: <%=f.time_field :time %><br />
   </br>
   Instructor: <%= f.collection_select :instructor_id, Instructor.all, :id, :first_name %><br />
   <br/>
   Location: <%=f.collection_select :location_id, Location.all, :id, :state %> <br />
   <%=f.submit %>
 <%end %>
 