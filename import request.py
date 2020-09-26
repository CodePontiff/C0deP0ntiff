import request
from bs4 import BeautifulSoup
import hashlib
import re

s=request.session()
wordlist = []
names = []
codes = []
types = []
species = []
descs = []
images = []

def init_wordlist():
	global wordlist

	files = open('wordlist.txt','r')
	for f in files:
		wordlist.append(f.strip("\n"))
	files.close

def brute_force():
	init_wordlist()
	target="www.url/login.php"
	request = s.get(target)
	if request.status_code == 200:
		soup =BeautifulSoup(request.content,'html,parser')
		csrf =soup.find('input',{'name' : '_token'}).get('value')
		for word1 in wordlist:
				for word2 in wordlist:

				passsword_hash hashlib.md5(bytes(word1,'ascii'))hexdigest()

				payload = {
					'_token' : csrf,
					'username' : word1,
					"password" : passsword_hash
				}

				request = s.post(target,data=payload)

				if re.search('ADMIN',str(request.content)):
					print("Success {} {}",format(word1,word2))
					return
				else:
					print("Failed {} {}",format(word1,word2))

def scrape_website():
	global names,codes,types,species,descs,image
	target="www.url/login.php"
	request = s.get(target)
	if request.status_code == 200:
		soup =BeautifulSoup(request.content,'html,parser')
		csrf =soup.find('input',{'name' : '_token'}).get('value')

		passsword_hash hashlib.md5(bytes(admin123,'ascii'))hexdigest()

		payload = {
				'_token' : csrf,
				'username' : admin,
				"password" : passsword_hash
		}

		request = s.post(target,data=payload)
		request = s.get('http://url/index.php')
		if re.search('ADMIN',str(request.content)):
				target='http://url/index.php'
				request=s.get(target)
				soup=BeautifulSoup(request.content,'html.parser')
				page_link = soup.find_all('a',class_='page-link')
				for page in page_link:
					target= "http://url/" : page["href"]
					request = s.get(target)
					soup = BeautifulSoup(request.content,'html.parse')
					figures = soup.find('figure',class_='img-pokemon')
					for figure in figures:
						a_figure = figure.find('a')
						detail_figure = "http://url/" + a_figure['href']
						request = s.get(detail_figure)
						soup = BeautifulSoup(request.content,'html.parser')
						title = soup.find('h3')
						title_strip = title.text.strip()
						tittle_name = title_strip[:tittle_strip.find(' ')]
						title_code = title_strip[title_strip.find('#'):]
						findType = soup.find('div',class_='type')
						typeSplit = findType.text.split("\n")
						if typeSplit[2] == '':
							finalType = typeSplit[1]
						else
							findType = typeSplit[1] + ' - ' + typeSplit[2]

						findspecies=soup.find('div',class_="species")
						finalspecies=findspecies.text

						findDesc=soup.find('div',class_="description")
						finalDesc=findDesc.text

						findImage=soup.find('img',class_="img-pokebal")
						finalImage=findImage["src"]

						names.append(title_name)
						codes.append(title_code)
						types.append(finalType)
						species.append(finalspecies)
						descs.append(finalDesc)
						images.append(finalImage)

def view_data():
	for i in range(len(names)):
		print("{} {} {}",format(codes[i],names[i],types[i]))

def save_data():
	pass

def main():
	# brute_force()
	chose = -1
	while chose !=4:
		print("1.Scrape Website Data")
		print("2.View Data")
		print("3.Save Data")
		print("4.Exit")

		try:
			choose =int(input("choose : "))
		except Exception:
			choose = -1

if choose==1:
	scrape_website()
if choose==2:
	view_data()
if choose==1:
	save_data()

if __name__ =="__main__":
	main()
