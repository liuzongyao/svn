#FROM alpine:3.4
FROM index.alauda.cn/alaudaorg/qaimages:helloworld
MAINTAINER houchao hchan@alauda.io
ENV PYTHON_VERSION=2.7.12-r0
ENV PY_PIP_VERSION=8.1.2-r0

#RUN apk update && apk add -u python=$PYTHON_VERSION py-pip=$PY_PIP_VERSION curl vim 

WORKDIR /app                                                                                                            
                                                                                                                        
EXPOSE 80                                                                                                               
                                                                                                                        
COPY . /app                                                                                                             
                                                                                                                        
RUN chmod +x /app/run.sh                                                                                                
RUN chmod +x /app/run-sono.sh
                                                                                                                        
CMD ["/app/run-sono.sh"] 
