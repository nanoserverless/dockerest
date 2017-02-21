FROM            scratch
COPY	        dockerest /
ENTRYPOINT      ["/dockerest"]
EXPOSE          80
