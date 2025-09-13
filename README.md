# 💳 Checkout Payment - Flutter

![Demo](https://github.com/user-attachments/assets/7331e19c-e630-4e09-a52e-e0fc0bf5622e)

Un mini projet Flutter intégrant **Stripe** et **PayPal** pour offrir une expérience de paiement fluide et sécurisée.  
Ce projet illustre comment mettre en place un système de paiement complet dans une application mobile.

---

## 🚀 Fonctionnalités
- ✅ Paiement par **carte bancaire (Stripe)**
- ✅ Paiement via **PayPal**
- ✅ Gestion d’état avec **Cubit**
- ✅ Injection de dépendances avec **Get_it**
- ✅ Requêtes HTTP gérées par **Dio**
- ✅ Intégration simple de `flutter_stripe`
- ✅ Mise en place de `flutter_paypal_payment`

---

## 🛠️ Stack technique
- **Flutter**
- **Dart**
- **Stripe Payment Intents**
- **PayPal SDK**
- **Dio** (HTTP client)
- **Cubit** (state management)
- **Get_it** (dependency injection)

---

## 📂 Structure du projet
checkout_payment/
│-- lib/
│ ├── core/ # Gestion d’état
│ ├── features/ # Services Stripe & PayPal
│ └── main.dart # Point d’entrée


## ⚡ Installation & Exécution

1. **Cloner le projet**
```bash
git clone https://github.com/ton-utilisateur/checkout-payment.git
cd checkout-payment
```
Installer les dépendances

```bash
flutter pub get
```
Lancer l’application

```bash
flutter run
```

💡 Points d’apprentissage
Utilisation de Stripe Payment Intents

Intégration d’API de paiement en toute sécurité

Architecture claire et modulaire

Mise en pratique du state management avec Cubit


📄 Licence
Ce projet est publié sous licence MIT.
Vous êtes libre de l’utiliser, le modifier et le partager.
