enum PaymentMethods {paypal, cash, visa, mastercard}

class Payment {
  PaymentMethods paymentMethod;

  Payment(this.paymentMethod);

  void setPayMethod({required PaymentMethods paymentMethod }){
    this.paymentMethod = paymentMethod;
  }


  void printPayment() {
    print(paymentMethod.name);
  }


}
  main(){
   Payment payment = Payment(PaymentMethods.mastercard);
   payment.printPayment();

   payment.setPayMethod(paymentMethod: PaymentMethods.visa);
   payment.printPayment();
}
