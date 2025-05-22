
desvestandar = function(n){
  if (length(n) <= 1) {
    resp1 = return("Debe ser más de un número")
  } else {
    resp2 = return(sd(n))
  }
}
desvestandar(c(10,2,3))

NOMCOL = function(x) {
  if (class(x) == "data.frame") {
    nomcol = colnames(x)
    print(nomcol)
  } else {
    print("Tiene que ser un dataframe")
  }
}
NOMCOL(mtcars)

