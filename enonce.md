Scénario 2:
 
Le navigateur est lancé
L'utilisateur accède à http://automationexercise.com
L'utilisateur clique sur le bouton "Produits"
L'utilisateur est dirigé vers la page "TOUS LES PRODUITS"
L'utilisateur entre un nom de produit dans la barre de recherche et clique sur "Rechercher"
"PRODUITS RECHERCHÉS" est visible
Tous les produits correspondants sont affichés
L'utilisateur ajoute ces produits au panier
L'utilisateur clique sur le bouton "Panier"
Les produits ajoutés sont visibles dans le panier
L'utilisateur clique sur "Inscription/Connexion" et se connecte
L'utilisateur retourne à la page Panier
Les produits ajoutés sont toujours visibles
L'utilisateur supprime tous les produits du panier
Le message "Le panier est vide ! Cliquez ici pour acheter des produits." est visible

Feature: Search and Manage Cart on Automation Exercise
  As a user of Automation Exercise
  I want to search for products, manage my cart, and verify cart persistence after login
  So that I can track my selected products and remove them if needed

  Scenario: 
    Given I add products to the cart after a search 
    And I log into my account 
    When I delete all the products added from the cart 
    Then the cart is empty