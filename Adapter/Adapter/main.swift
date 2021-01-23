import Foundation

var iPhone: IPhone = IPhone8()

iPhone.chargeWithLightning() // console: Charging with lightning

iPhone = IPhoneToGoodPhoneChargeAdapter() // Присваиваем адаптер

iPhone.chargeWithLightning() // console: Charging fast, but with lightning
