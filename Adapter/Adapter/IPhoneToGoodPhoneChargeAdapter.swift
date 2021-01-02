import Foundation


/*
 Адаптер должен обладать методами обоих адаптируемых классов,
 поэтому должен наследоваться и от GoodPhone и от IPhone
 */
class IPhoneToGoodPhoneChargeAdapter: GoodPhone, IPhone {
    func chargeWithLightning() {
        chargeWithTypeC()
        print(" but with lightning")
    }
}
