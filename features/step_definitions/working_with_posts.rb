
Then(/^I should ?(not )see a ([^"]*) link$/) do |not_see, link_name|
  if not_see
  	page.should_not have_content(link_name)
  else
  	page.should have_content(link_name)
  end
end

Then(/^if I create a post with title: ([^"]*), content: ([^"]*), and recepients: ([^"]*)$/) do |title, content, recepients|
  fill_in("title", :with => title)
  fill_in("content", :with => content)
  fill_in("recepients", :with => recepients)
  click_button("create")
end

Then(/^I should see the post listed with title: ([^"]*), content: ([^"]*), and recepients: ([^"]*)$/) do |title, content, recepients|
  page.should have_content(title)
  page.should have_content(content)
  page.should have_content(recepients)
end

