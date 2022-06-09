
import Foundation


struct Configuration: Decodable {

    let googleMapsApiKey: String
    let newRelicToken: String
}


extension Configuration {

    static let `default`: Configuration = {
        #if DEV_BUILD
            let resourceName = "app_config_dev"
        #elseif STAGING_BUILD
            let resourceName = "app_config_staging"
        #elseif PREPROD_BUILD
            let resourceName = "app_config_preprod"
        #elseif PROD_BUILD
            let resourceName = "app_config_prod"
        #else
            fatalError("Unsupported build type")
        #endif

        guard let url = Bundle.main.url(forResource: resourceName, withExtension: "json") else {
            fatalError("Config file not found")
        }

        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let config = try decoder.decode(Configuration.self, from: data)
            return config

        } catch let err {
            fatalError("Failed: " + err.localizedDescription)
        }
    }()
}
