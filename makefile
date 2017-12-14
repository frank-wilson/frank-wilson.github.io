remote:
	jekyll build
	git add --all . &&\
	git commit -m "$$(date)" &&\
	git push origin master --force
	cd _site &&\
	git add --all . &&\
	git commit -m "$$(date)" &&\
	git push origin master --force
	make local
    
local:
	jekyll build
	jekyll serve --incremental --port 4000
