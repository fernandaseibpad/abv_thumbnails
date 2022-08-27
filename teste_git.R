repo_bare <- git2r::init(paste0(getwd(), '/fotos_thumbnail'))
repo = paste0(getwd(), '/fotos_thumbnail')
git2r::config(repo_bare, user.name = "IBPAD", user.email = "contato@ibpad.com.br")
git2r::add(repo = repo_bare, path= './rlgv/thumb_680413.jpg')

commit(repo_bare, "add files")
remote_add(repo_bare, name = 'origin', url = 'https://github.com/IBPAD/fotos_thumbnail.git')
cred <- cred_env("IBPAD",
                 "Gitibpad!@#123")
push(repo_bare, name = "originssh", refspec = 'refs/heads/master', credentials = cred)
push('/home/ibpad/Desktop/AMBEV/fotos_thumbnail', 'originssh')

#### testeee nnnnnn