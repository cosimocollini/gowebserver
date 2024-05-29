FROM debian:stable-slim

# COPY source destination
COPY gowebserver /bin/gowebserver

ENV PORT=8080
ENV JWT_SECRET=lQkGoVOWyhh/sA8Tr7uS3KBIs3A18fWHMA9nDjrlcYoDHJq2Iz8t+VR7WBi8ezo0/mg2Logus4IJyKSngEQsig==
ENV POLKA_KEY=f271c81ff7084ee5b99a5091b42d486e

CMD ["/bin/gowebserver"]