SELECT DISTINCT ON (arcana.arcananumber, persona.arcananame)
       personaname, persona.arcananame, baselevel
FROM   persona
join arcana on arcana.arcananame = persona.arcananame
ORDER  BY arcana.arcananumber, persona.arcananame, baselevel DESC;