class FavoriteMailer < ActionMailer::Base
  default from: "ryanczaja@mac.com"

  def new_comment(user, post, comment)
  	@user = user
  	@post = post
  	@comment = comment

  	headers["Message-ID"] = "<comments/#{@comment.id}@ryanczaja-bloccit.herokuapp.com>"
  	headers["In-Reply-To"] = "<comments/#{@post.id}@ryanczaja-bloccit.herokuapp.com>"
  	headers["References"] = "<comments/#{@post.id}@ryanczaja-bloccit.herokuapp.com>"

  	mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
