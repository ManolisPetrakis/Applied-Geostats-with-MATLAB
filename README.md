# Εισαγωγή στην Εφαρμοσμένη Γεωστατιστική σε περιβάλλον MATLAB&reg;

Σύντομη εισαγωγή στη MATLAB&reg; για τις ανάγκες του μαθήματος ΜΟΠ 511 "Εφαρμοσμένη Γεωστατιστική" της σχολής Μηχανικών Ορυκτών Πόρων του Πολυτεχνείου Κρήτης.

Προσοχή: Μόνο ο κώδικας και οι σημειώσες δίδονται με άδεια GPL v3.0. Για τα δεδομένα δίδονται παραπομπές για την πηγή τους. Συμβουλευτείτε τις παραπομπές σχετικά με τις άδειες με τις οποίες παραχωρούνται τα δεδομένα. 

Μανώλης Πετράκης, Νοέμβριος 2018.

## Περιεχόμενα

* [Ανάγνωση και αποθήκευση δεδομένων, πρωταρχική στατιστική ανάλυση και γραφήματα](Applied-Geostats-with-MATLAB/01-Data-Wrangling-and-Plotting/MATLAB/Data_wrangling_and_plotting.ipynb)

## Χρήση της MATLAB&reg; από Jupyter notebooks 

__Τα ακόλουθα βήματα είναι προαιρετικά και αφορούν μονάχα εκείνους που θέλουν να καλούν τη MATLAB&reg; από Jupyter notebooks.__ 
Ο παρακάτω οδηγός βασίστηκε στη σελίδα https://am111.readthedocs.io/en/latest/jmatlab_install.html.

Αν χρησιμοποιείτε Windows και Anaconda, ακολουθήστε τα παρακάτω βήματα:

### Από τη πλευρά της Anaconda:

* Δημιουργείστε το νεο environment `jmatlab` με την `python 3.5` και το `jupyter`: 

    ```
    conda create -n jmatlab python=3.5 jupyter
    ```
* Ενεργοποιήστε το νεο environment `jmatlab`:

    ```
    conda activate jmatlab
    ```
* Εγκαταστήστε το `matlab_kernel` στο ίδιο environment:
    ```
    pip install matlab_kernel
    ```
    
### Από τη πλευρά της MATLAB&reg;:

* Ανοίξτε ένα anaconda prompt _με administrator privileges_.

* Βρείτε που είναι εγκατεστημένη η MATLAB&reg; στο σύστημά σας και πάτε στο φάκελο `\extern\engines\python` π.χ.:

    ```
    cd C:\Program Files\MATLAB\R2017a\extern\engines\python
    ```
    
* Εγκαταστήστε το `setup.py`: 

    ```
    python setup.py install
    ```
    
Έτοιμοι! Ο MATLAB&reg; kernel είναι διαθέσιμος στα jupyter notebook σας στο environment `jmatlab`:

```
conda activate jmatlab
jupyter notebook
```
