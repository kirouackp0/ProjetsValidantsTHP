require 'nokogiri'
require 'open-uri'

def scraping(coin)
    html = URI.open("https://coinmarketcap.com/all/views/all/").read
    nokogiri_doc = Nokogiri::HTML(html)
    currencies = {}

    nokogiri_doc.css('tbody tr').each do |row|
        crypto_name = row.css('.cmc-table__column-name').text.strip
        crypto_price = row.css('.cmc-table__cell--sort-by__price').text.strip
        currencies[crypto_name] = crypto_price
    end

    # option 1 - imprimer la liste complète
    currencies.each_with_index do |(name, price), index|
        puts "#{index + 1} - #{name}: #{price}"
    end
end

scraping("BTCBitcoin")

=begin

EXPLICATION
1) La définition du variable html (html = URI.open(url).read) permet à open-uri d'ouvrir le lien URL, lire le contenu du fichier HTML comme un string, et de le stocker temporairement dans un variable;
2) Ensuite, la méthode ("Nokogiri::HTML(html)") prend la version du fichier HTML analysé (parsed) par Nokogiri à partir du string HTML stocké dans le variable précédent. Il est maintenant possible d'appliquer des méthodes Nokogiri à partir du nouveau variable nokogiri_doc. Il s'agit d'une méthode de nokogiri et non de ruby;
3) On créé un hash pour stocker les devises et leurs valeurs;
4) Dans le prochain bloc de code nous appliquons des méthodes de nokogiri au document analysé. Nous allons inspecter la page web à scraper et identifier les éléments HTML contenant les données que nous voudrions scraper. On va cibler d'abord (<tbody tr>) car on veut les données à l'intérieur du corps du tableau.
5) La méthode .each de ruby permet d'itérer une commande sur des éléments individuels  (les lignes représentant les noms des devises et leurs valeurs) et d'appliquer les méthodes suivantes de Nokogiri:
    La méthode ".css" : sélectionne les éléments d'un fichier HTML sur la base des sélecteurs CSS;
    La méthode ".text": va chercher le texte à l'intérieur d'un élément HTML;
    La méthode ".strip": supprime les espaces vides en début et en fin de chaîne de caractères. Utilisé souvent en web scaping pour garantir que les données soient bien formatées et propres.
6) Ensuite, pour alimenter le hash avec le texte recherché, on utilise: hash_name[key_name] = value_name. Nous avons maintenant un hash peuplé.
7) Afin d'imprimer toutes les devises et leurs valeurs (ainsi que leurs indices au sein du hash) on utilise la méthode .each_with_index. On ajoute 1 à l'indice afin de commencer à 1 au lieu de 0 dans la numérotation. 
=end
