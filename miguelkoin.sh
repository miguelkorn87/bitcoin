
# CHANGE COIN NAME INSIDE FILES
#find $(ls) -type f -print0 | xargs -0 sed -i 's/miguelkoin/miguelkoin/g'
#find $(ls) -type f -print0 | xargs -0 sed -i 's/Miguelkoin/Miguelkoin/g'
#find $(ls) -type f -print0 | xargs -0 sed -i 's/MiguelKoin/MiguelKoin/g'
#find $(ls) -type f -print0 | xargs -0 sed -i 's/MIGUELKOIN/MIGUELKOIN/g'
#find $(ls) -type f -print0 | xargs -0 sed -i 's/MKN/MKN/g'
#find $(ls) -type f -print0 | xargs -0 sed -i 's/Mkn/Mkn/g'
#find $(ls) -type f -print0 | xargs -0 sed -i 's/mkn/mkn/g'

# CHANGE COIN NAME IN FILENAMES
find $(ls) -exec rename 's/bitcoin/miguelkoin/' {} ";"
find $(ls) -exec rename 's/btc/mkn/' {} ";"

# LOCALE ERRORS
sed -i 's/bitcon/miguelkoin/' src/qt/locale/miguelkoin_da.ts
sed -i 's/bitcion/miguelkoin/' src/qt/locale/miguelkoin_ar.ts
sed -i 's/Bitconi/MiguelKoin/' src/qt/locale/miguelkoin_et.ts

# COPYRIGHT
find $(ls) -type f -print0 | xargs -0 sed -i '/opyright/ s/Bitcoin/Bitcoin/' {} ";"
find $(ls) -type f -print0 | xargs -0 sed -i '/opyright/ s/Bitcoin/Bitcoin/' {} ";"

# PORTS
find . -type f -print0 | xargs -0 sed -i 's/9443/9443/' {} ";"
find . -type f -print0 | xargs -0 sed -i 's/9444/9444/' {} ";"
