# -*- coding: utf-8 -*-
import socket
import re
from flask import Flask, request, render_template

app = Flask(__name__)


@app.route('/', methods=['POST', 'GET'])
def ping_host():
    if request.method == 'POST':	    
        host = request.form['host']
	if host:
            tpl = re.compile(r'^(https?:\/\/)?(www\.)?([^\/]+)')
            host = re.match(tpl,host).groups()[2]
	    try:
                ip = socket.gethostbyname(host)
	    except:
		host = ip = u'¯\_(ツ)_/¯'
                on_host = u'<p class="lead red">Введите нормальный домен, не могу срезолвить!</p>'
		context = {'host': host, 'ip': ip, 'on_host': on_host}
	        return render_template('result.tpl', **context), 200
	    if ip == '88.198.29.150':
	        on_host = u'<p class="lead green">Этот сайт находится на Catamba хостинге!</p>'
	    else:
	        on_host = u'<p class="lead red">Этот сайт не на нашем хостинге!</p>'
	else:
	    host = ip = u'¯\_(ツ)_/¯'
	    on_host = u'<p class="lead red">Введите домен!</p>'
        context = {'host': host, 'ip': ip, 'on_host': on_host}	
	return render_template('result.tpl', **context), 200
        
    if request.method == 'GET':
	return render_template('index.tpl'), 200 

if __name__ == '__main__':
#    app.debug = True
    app.run()
