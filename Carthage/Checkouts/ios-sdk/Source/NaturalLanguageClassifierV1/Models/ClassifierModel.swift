/**
 * Copyright IBM Corporation 2016
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation
import Freddy

/** A classifer model generated by the Natural Language Classifier service. */
public struct ClassifierModel: JSONDecodable {
    
    /// Unique identifier for this classifier
    public let classifierId: String
    
    /// Link to the classifer
    public let url: String
    
    /// User-supplied name for the classifier
    public let name: String?
    
    /// The language used for the classifier
    public let language: String
    
    /// Date and time (UTC) the classifier was created
    public let created: String
    
    /// Used internally to initialize a `ClassifierModel` from JSON.
    public init(json: JSON) throws {
        classifierId = try json.string("classifier_id")
        url = try json.string("url")
        name = try? json.string("name")
        language = try json.string("language")
        created = try json.string("created")
    }
}
