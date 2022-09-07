import Foundation

// Implement mobile phone storage protocol
// Requirements:
// - Mobiles must be unique (IMEI is an unique number)
// - Mobiles must be stored in memory
protocol MobileStorage {
    func getAll() -> Set<Mobile>
    func findByImei(_ imei: String) -> Mobile?
    func save(_ mobile: Mobile) throws -> Mobile
    func delete(_ product: Mobile) throws
    func exists(_ product: Mobile) -> Bool
}
struct Mobile: Hashable {
    let imei: String
    let model: String
}
enum ThrowingError: Error{
    case exist
    case not_exist
}
var mobile_dict = [String:String]()
class MobileStorageImplementation:MobileStorage {
    func getAll() -> Set<Mobile> {
        var mobile_set = Set<Mobile>()
        for (key,value) in mobile_dict {
            mobile_set.insert(Mobile(imei: key, model: value))
        }
        return mobile_set
    }
    func findByImei(_ imei: String) -> Mobile? {
        for (key,value) in mobile_dict {
            if key.contains(imei) {
                return Mobile(imei: key, model: value)
            }
        }

        return nil
    }
    func save(_ mobile: Mobile) throws -> Mobile {
        if !exists(mobile) {
            mobile_dict.updateValue("\(mobile.model)", forKey: "\(mobile.imei)")
        }
        else {
            throw ThrowingError.exist
        }
        return mobile
    }
    func delete(_ product: Mobile) throws {
        if exists(product) {
            mobile_dict.removeValue(forKey: "\(product.imei)")
        }else{
            throw ThrowingError.not_exist
        }
    }
    func exists(_ product: Mobile) -> Bool {
        return mobile_dict.contains(where: { $0.key == product.imei })
    }
}

func testMobile(mobile_test:MobileStorage){
    var return_save_arr = [Mobile]()
    do {
        return_save_arr.append(try mobile_test.save(Mobile(imei: "efbkq28373", model: "iPhone 11")))
        return_save_arr.append(try mobile_test.save(Mobile(imei: "829rhuofh49h", model: "iPhone11")))
        return_save_arr.append(try mobile_test.save(Mobile(imei: "efbkq28373", model: "iPhone 12")))
        return_save_arr.append(try mobile_test.save(Mobile(imei: "307547768908691", model: "Samsung Galaxy S20 Ultra")))
        return_save_arr.append(try mobile_test.save(Mobile(imei: "efbkq28373", model: "Huawei P30 Lite")))
    }catch{
        print("Probably mobile already exist")
    }
    print(return_save_arr.count)
    assert(return_save_arr.count == 3)
    assert(mobile_test.exists(Mobile(imei: "829rhuofh49h", model: "iPhone11")))
    var test_set :Set<Mobile> = mobile_test.getAll()
    assert(!test_set.isEmpty)
    assert(mobile_test.exists(Mobile(imei: "829rhuofh49h", model: "iPhone11")))
    var delete_return = ()
    print(type(of: delete_return))
    do {
        delete_return = try mobile_test.delete(Mobile(imei: "829rhuofh49h", model: "iPhone11"))
    }
    catch {
        print("Product do not exists")
    }
}

var impl = MobileStorageImplementation()
do {
    try impl.save(Mobile(imei: "829rhuofh49h", model: "iPhone11"))
    try impl.save(Mobile(imei: "efbkq28373", model: "iPhone 12"))
    try impl.save(Mobile(imei: "307547768908691", model: "Samsung Galaxy S20 Ultra"))
    try impl.save(Mobile(imei: "efbkq28373", model: "Huawei P30 Lite"))
}catch {
    print("Probably mobile already exists")
}
print("getAll: \(impl.getAll())")
print("findByImei: \(impl.findByImei("829rhuofh49h"))")
//testMobile(mobile_test: MobileStorageImplementation())
print(impl.exists(Mobile(imei: "829rhuofh49h", model: "iPhone11")))
print(try impl.delete(Mobile(imei: "829rhuofh49h", model: "iPhone11")))
