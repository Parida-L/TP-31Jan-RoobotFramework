# 🚀 TP - Automation Exercise (Robot Framework POM)

## 📌 Présentation

Ce projet automatise les tests du site [Automation Exercise](http://automationexercise.com) en utilisant **Robot Framework** et une approche **Page Object Model (POM)**. Il teste le processus de recherche de produits, l'ajout au panier, la connexion et la gestion du panier. 🛒✨

L'énoncé du projet est disponible dans le fichier [enonce.md](./enonce.md).

---

## 📂 Structure du Projet

📁 **tests/** → Contient les fichiers **Robot Framework** exécutant les tests.  
📁 **pages/** → Contient les **keywords** pour chaque page (POM).  
📁 **resources/** → Contient les fichiers communs (ex: configuration du navigateur, librairies, variables).  
📁 **reports/** → Contient les rapports d'exécution des tests.  
📄 [**installation.md**](./installation.md). → Instructions pour l'installation des prérequis.  
📄 **README.md** → Ce fichier d'explication du projet. 📖  

---

## ⚙️ Prérequis

✔ **Python** 🐍  
✔ **Robot Framework** 🤖  
✔ **SeleniumLibrary** 🌐  
✔ **WebDriver** compatible avec votre navigateur (**ChromeDriver** pour Google Chrome) 🖥️

Les instructions détaillées pour l'installation sont disponibles dans [installation.md](./installation.md).

---

## 📋 Scénarios de Test

Les scénarios de test sont définis en **Gherkin** pour une meilleure lisibilité.

```Gherkin
Feature: Search and Manage Cart on Automation Exercise
  As a user of Automation Exercise
  I want to search for products, manage my cart, and verify cart persistence after login
  So that I can track my selected products and remove them if needed

  Scenario: Add products, login and empty cart
    Given I add products to the cart after a search 
    And I log into my account 
    When I delete all the products added from the cart 
    Then the cart is empty
```

---

## 🏗️ Implémentation avec Page Object Model (POM)

L'implémentation suit l'approche **POM**, où chaque page a ses propres mots-clés.

📁 **pages/** _(Mots-clés POM)_  
- 📄 **home_page.robot** → Actions sur la page d'accueil. 
- 📄 **commun.robot** → Actions communes à toutes les pages.  
- 📄 **products_page.robot** → Actions liées à la recherche et ajout de produits.  
- 📄 **cart_page.robot** → Gestion du panier et suppression des produits.  
- 📄 **login_page.robot** → Connexion utilisateur.  

📁 **resources/** _(Configuration et actions communes)_  
- 📄 **browser_setup.robot** → Configuration du navigateur.
- 📄 **librairies.resource** → Liste des librairies Selenium utilisées.
- 📄 **variables.resource** → Liste des variables

📁 **tests/** _(Exécution des tests)_  
- 📄 **test_tp.robot** → Exécute le scénario de test Gherkin.  

---

## ▶️ Exécution des Tests

### **1️⃣ Lancer tous les tests**
```bash
robot -d reports tests/
```

### **2️⃣ Exécuter un test spécifique**
```bash
robot -d reports tests/test_tp.robot
```

### **3️⃣ Générer un rapport HTML détaillé**
Après exécution, un **rapport des résultats** est généré dans le dossier `reports/`.

```bash
robot --outputdir reports tests/
```

📂 **Rapports disponibles dans `reports/log.html` et `reports/report.html`**  

---

## 🏆 Pourquoi Utiliser Robot Framework avec POM ?

| ✅ **Avantages** | 🚀 **Pourquoi ?** |
|-----------------|------------------|
| **Meilleure Maintenabilité** | Chaque page a ses propres mots-clés, faciles à modifier. |
| **Modularité** | Les tests réutilisent les actions définies dans les fichiers `pages/`. |
| **Lisibilité** | Scénarios définis en **Gherkin** pour une compréhension claire. |
| **Scalabilité** | Permet d'ajouter de nouveaux tests sans modifier les fichiers existants. |

---

🚀 **Possibles Ameliorations** 🎯

---
