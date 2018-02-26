select sprache.beschreibung, count(*) 
from sprache
join uebersetzung u on u.sprache = sprache.id
join vokabel v on v.id = u.vokabel
group by sprache.beschreibung;

select uebersetzung.bezeichnung, vokabel.kategorie
from vokabel
join kategorie on kategorie.id = vokabel.kategorie
join uebersetzung on uebersetzung.vokabel = vokabel.id
join sprache on sprache.id = uebersetzung.sprache;