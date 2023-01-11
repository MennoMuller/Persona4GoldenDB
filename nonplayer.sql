update persona
set nonplayer = true
where baselevel = 0 
or personaname = 'Jiraiya' 
or personaname = 'Konohana Sakuya'
or personaname = 'Take-Mikazuchi'
or personaname = 'Himiko'
or personaname = 'Tomoe'
or personaname = 'Sukuna-Hikona';

select personaname, baselevel, nonplayer from persona
order by nonplayer desc;