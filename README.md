<h1>The Hacking Project - Semaine 4 - Jeudi</h1>

<h2>Projet : L'usine</h2>

<p>Edité par 
	<ul>
		<li>🤩 <strong>Gaëlle Gorgori</strong> : 06 62 31 97 81</li>
		<li>😎 <strong>Thomas Fernandez</strong> : 06 58 88 68 09</li>
		<li>🤗 <strong>Mathilde Ray</strong> : 06 25 98 18 85</li>
		</ul></p>

<p>Les usines sont à la mode en ce moment, nous allons créer un site pour les usines. Nous allons créer un modèle assemblage, qui serait l'assemblage de plusieurs pièces. Une pièce peut appartenir à plusieurs assemblages.</p>

<p> Pour ce faire nous avons créé le modèle suivant: 
	<ul>
		<li> <strong>Assembly</strong> qui a comme attribut 'name'<br/>
			- <em>has_many_and_belongs_to</em> : Un Assembly a plusieurs pièces et appartient à plusieurs pièces</li>
		<li> <strong>Part</strong> qui a comme attribut 'part_number'<br/>
			- <em>has_many_and_belongs_to</em> : Une Part a plusieurs assemblages et appartient à plusieurs assemblages</li>
			- <em>has_many through</em> : Un Doctor a plusieurs patients au travers de rdv</li>
		<li> <strong>Table assemblies_parts</strong> : qui relie les pièces avec les assemblages et vice-versa</li>
		</ul>
	</p>

<p>Ce programme a été fait avec rails et utilise de nombreuses gem dont FAKER pour générer une super BDD ! </p>

Pour <strong>créer la BDD</strong>, faire un `git clone`, puis un `bundle install`, puis `rails db:migrate` et enfin `rails db:seed`
<p>Pour une lecture simplifiée, ouvrir le fichier <em>development.sqlite3</em> dans un logiciel graphique.</p>
