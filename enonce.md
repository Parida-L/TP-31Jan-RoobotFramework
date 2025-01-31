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


--- 

Scénario 3:
 
Feature: Recherche de produit
 
  @RechercheSimple
  Scenario: Rechercher un produit spécifique et vérifier les résultats
    Given Le navigateur est lancé
    And L'utilisateur accède à "http://automationexercise.com"
    Then La page d'accueil est visible
    When L'utilisateur clique sur le bouton "Produits"
    Then L'utilisateur est redirigé avec succès vers la page "TOUS LES PRODUITS"
    When L'utilisateur saisit "Robe" dans la barre de recherche et clique sur le bouton "Rechercher"
    Then "PRODUITS RECHERCHÉS" est visible
    And Les résultats affichés contiennent "Robe"
 
@vérifier les détails de l'adresse sur la page de paiement
Lancez le navigateur
Accédez à l'URL http://automationexercise.com
Vérifiez que la page d'accueil est bien visible
Cliquez sur le bouton « Inscription/Connexion »
Remplissez tous les détails dans l'inscription et créez un compte
Vérifiez « COMPTE CRÉÉ ! » et cliquez sur le bouton « Continuer »
Vérifiez « Connecté avec le nom d'utilisateur » en haut
Ajouter des produits au panier
Cliquez sur le bouton « Panier »
Vérifiez que la page du panier s'affiche
Cliquez sur « Procéder au paiement »
Vérifiez que l'adresse de livraison et l'adresse de facturation sont les mêmes que celles renseignées lors de l'enregistrement du compte
Cliquez sur le bouton « Supprimer le compte »
Vérifiez « COMPTE SUPPRIMÉ ! » et cliquez sur le bouton « Continuer »
 
@Télécharger la facture après le bon de commande
1. Lancez le navigateur
2. Naviguez jusqu’à l’URL 'http://automationexercise.com'
3. Vérifiez que la page d’accueil est visible avec succès
4. Ajouter des produits au panier
5. Cliquez sur le bouton « Panier »
6. Vérifiez que la page du panier est affichée
7. Cliquez sur Passer à la caisse
8. Cliquez sur le bouton « S’inscrire / Se connecter »
9. Remplissez tous les détails dans Inscription et créez un compte
10. Vérifiez « COMPTE CRÉÉ ! » et cliquez sur le bouton « Continuer ».
11. Vérifiez « Connecté en tant que nom d’utilisateur » en haut de la page
12.Cliquez sur le bouton « Panier »
13. Cliquez sur le bouton « Passer à la caisse »
14. Vérifiez les détails de l’adresse et vérifiez votre commande
15. Entrez la description dans la zone de texte du commentaire et cliquez sur « Passer la commande »
16. Entrez les informations de paiement : Nom sur la carte, numéro de carte, CVC, date d’expiration
17. Cliquez sur le bouton « Payer et confirmer la commande »
18. Vérifiez le message de réussite « Votre commande a été passée avec succès ! »
19. Cliquez sur le bouton « Télécharger la facture » et vérifiez que la facture a été téléchargée avec succès.
20. Cliquez sur le bouton « Continuer »
21. Cliquez sur le bouton « Supprimer le compte »
22. Vérifiez « COMPTE SUPPRIMÉ ! » et cliquez sur le bouton « Continuer ».