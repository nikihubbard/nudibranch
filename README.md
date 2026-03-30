
# nudibranch

Colour palettes inspired by intertidal and shallow rocky reef nudibranchs and sea slugs 
photographed in NSW, Australia.

## Installation
install.packages("devtools")
devtools::install_github("nikihubbard-source/nudibranch")

## Usage
library(nudibranch)

# See all palettes
nudibranch_palette()

# Get a palette
nudibranch_palette("hypselodoris")

# Use with ggplot2
ggplot(data, aes(x, y, colour = group)) +
  scale_colour_nudibranch("hypselodoris")

ggplot(data, aes(x, y, fill = group)) +
scale_fill_nudibranch("hydatina")

# or specify palette, number, and order - for example:

scale_fill_manual(values = nudibranch_palette("elysia", n=4)[c(3, 4, 1)])+

## Palettes

### Hydatina
![hydatina](man/figures/01_Hydatina.png)

### Hypselodoris
![hypselodoris](man/figures/02_Hypselodoris.png)

### Doriprismatica
![bullina](man/figures/03_Doriprismatica.png)

### Bullina
![elysia](man/figures/04_Bullina.png)

### Elysia
![dolabrifera](man/figures/05_Elysia.png)

### Dolabrifera
![carminodoris](man/figures/06_Dolabrifera.png)

### Dendrodoris
![dendrodoris](man/figures/07_Dendrodoris.png)

### Aplysia
![aplysia](man/figures/08_Aplysia.png)

### Haloa
![haloa](man/figures/09_Haloa.png)

### Carminodoris
![ceratosoma](man/figures/010_Carminodoris.png)

### Jorunna
![jorunna](man/figures/011_Jorunna.png)

### Ceratosama
![doriprismatica](man/figures/012_Ceratosama.png)
