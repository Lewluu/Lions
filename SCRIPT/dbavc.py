
print("")
print(":::::MODIFICAREA VARIABILELOR PENTRU CONECTAREA LA BAZA DE DATE:::::")
print(":::::DACA INTRERUPI ESTI FRAIER:::::")

fn="../index.php"
file=open(fn,"r")
fd=file.read()

dbname="best_gamification"
sv_name="db.tuiasi.ro"
sv_username="best_gamification"
password="k8uz8nzb85axr"

fd=fd.replace('gtfo',dbname)
print("")
print(":::::database name variable changed:::::")
print("")

fd=fd.replace('localhost',sv_name)
print("")
print(":::::server name variable changed:::::")
print("")

fd=fd.replace('root',sv_username)
print("")
print(":::::server username variable changed:::::")
print("")

fd=fd.replace('$_SESSION["password"]=""','$_SESSION["password"]='+'"'+password+'"')
print("")
print(":::::server password variable changed:::::")
print("")

file=open(fn,"w")
file.write(fd)

print(":::::DONE:::::")
print("")



