#LIBRERIA DE FUNCIONES


#FUNCIÓN PARA AÑADIR DOBLE BARRA A UNA RUTA

def funcion_para_añadir_una_barra(string):
    string.replace("\\", r"\\")




#FUNCIÓN PARA LIMPIAR DATOS Y QUE SEA UNIFORME LA LECTURA POR PYTHON
    #IMPORTANTE HACER: "import re" primero

def clean_strings(strings):
    result=[]
    for value in strings:
        value = value.strip()
        value = re.sub('[!#?]','',value)
        value = value.title()
        result.append(value)
        return result


#PARA LIMPIAR UNA ETIQUETA DE HTML
    #IMPORTANTE HACER: "import re" primero
    
def cleanhtml(raw_html):
  cleanr = re.compile('<.*?>')
  cleantext = re.sub(cleanr, '', raw_html)
  return cleantext



#PARA HACER EL CUBO DE UN NÚMERO

def cubo(x):
    y = x**3
    return y



#PARA ORDENAR ITEMS DE FORMA DESCENDIENTE

def ordenar_descending(dataframe, columna):
    x = dataframe.sort_values(columna, ascending=False)
    return x


#PARA CONVERTIR UNA COLUMNA DE STR A INT LIMPIANDO LOS DATOS

def precio_int(dataframe, columna_precio)
    dataframe['columna_precio'] = dataframe['columna_precio'].str.replace(',', '')
    dataframe['columna_precio'] = dataframe['columna_precio'].str.replace('$', '')
    dataframe['columna_precio'] = dataframe['columna_precio'].astype('float')
    dataframe.drop_duplicates(subset ="columna_precio", 
                     keep = "first", inplace = True)
    return dataframe



#PARA PONER EN MAYÚSCULAS LA PRIMERA LETRA DEL STRING
 """lambda x: x.upper()""" #EN LAMBDA SERÍA ASÍ
def capitalizer_first(string):
    string = string[0].upper() + string[1:]
    return string



#PARA PONER EN MAYÚSCULAS EL STRING
 """lambda string: str(string[0].upper()) + str(string[1:])""" #EN LAMBDA SERÍA ASÍ
def capitalizer_all(string):
    string = string.upper()
    return string


#PARA COGER EL CONTENIDO DE UNA URL
def get_page_contents(url):
    page = requests.get(url, headers={"Accept-Language": "en-US"})
    return BeautifulSoup(page.text, "html.parser")


#PARA MOSTRAR EL HTML DE UNA URL
def show_html(html_str):
    print(BeautifulSoup(str(html_str), 'html.parser').prettify())