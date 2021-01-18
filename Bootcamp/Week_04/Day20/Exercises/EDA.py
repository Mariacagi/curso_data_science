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