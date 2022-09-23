import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddAccountRelationRequest : Tea.TeaModel {
    public var childNick: String?

    public var childUserId: Int64?

    public var parentUserId: Int64?

    public var permissionCodes: [String]?

    public var relationType: String?

    public var requestId: String?

    public var roleCodes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.childNick != nil {
            map["ChildNick"] = self.childNick!
        }
        if self.childUserId != nil {
            map["ChildUserId"] = self.childUserId!
        }
        if self.parentUserId != nil {
            map["ParentUserId"] = self.parentUserId!
        }
        if self.permissionCodes != nil {
            map["PermissionCodes"] = self.permissionCodes!
        }
        if self.relationType != nil {
            map["RelationType"] = self.relationType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleCodes != nil {
            map["RoleCodes"] = self.roleCodes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChildNick") {
            self.childNick = dict["ChildNick"] as! String
        }
        if dict.keys.contains("ChildUserId") {
            self.childUserId = dict["ChildUserId"] as! Int64
        }
        if dict.keys.contains("ParentUserId") {
            self.parentUserId = dict["ParentUserId"] as! Int64
        }
        if dict.keys.contains("PermissionCodes") {
            self.permissionCodes = dict["PermissionCodes"] as! [String]
        }
        if dict.keys.contains("RelationType") {
            self.relationType = dict["RelationType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleCodes") {
            self.roleCodes = dict["RoleCodes"] as! [String]
        }
    }
}

public class AddAccountRelationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var hostId: String?

        public var relationId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.relationId != nil {
                map["RelationId"] = self.relationId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostId") {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("RelationId") {
                self.relationId = dict["RelationId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: AddAccountRelationResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = AddAccountRelationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddAccountRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddAccountRelationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddAccountRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AllocateCostUnitResourceRequest : Tea.TeaModel {
    public class ResourceInstanceList : Tea.TeaModel {
        public var apportionCode: String?

        public var commodityCode: String?

        public var resourceId: String?

        public var resourceUserId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apportionCode != nil {
                map["ApportionCode"] = self.apportionCode!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceUserId != nil {
                map["ResourceUserId"] = self.resourceUserId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApportionCode") {
                self.apportionCode = dict["ApportionCode"] as! String
            }
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceUserId") {
                self.resourceUserId = dict["ResourceUserId"] as! Int64
            }
        }
    }
    public var fromUnitId: Int64?

    public var fromUnitUserId: Int64?

    public var resourceInstanceList: [AllocateCostUnitResourceRequest.ResourceInstanceList]?

    public var toUnitId: Int64?

    public var toUnitUserId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fromUnitId != nil {
            map["FromUnitId"] = self.fromUnitId!
        }
        if self.fromUnitUserId != nil {
            map["FromUnitUserId"] = self.fromUnitUserId!
        }
        if self.resourceInstanceList != nil {
            var tmp : [Any] = []
            for k in self.resourceInstanceList! {
                tmp.append(k.toMap())
            }
            map["ResourceInstanceList"] = tmp
        }
        if self.toUnitId != nil {
            map["ToUnitId"] = self.toUnitId!
        }
        if self.toUnitUserId != nil {
            map["ToUnitUserId"] = self.toUnitUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FromUnitId") {
            self.fromUnitId = dict["FromUnitId"] as! Int64
        }
        if dict.keys.contains("FromUnitUserId") {
            self.fromUnitUserId = dict["FromUnitUserId"] as! Int64
        }
        if dict.keys.contains("ResourceInstanceList") {
            self.resourceInstanceList = dict["ResourceInstanceList"] as! [AllocateCostUnitResourceRequest.ResourceInstanceList]
        }
        if dict.keys.contains("ToUnitId") {
            self.toUnitId = dict["ToUnitId"] as! Int64
        }
        if dict.keys.contains("ToUnitUserId") {
            self.toUnitUserId = dict["ToUnitUserId"] as! Int64
        }
    }
}

public class AllocateCostUnitResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var isSuccess: Bool?

        public var toUnitId: Int64?

        public var toUnitUserId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isSuccess != nil {
                map["IsSuccess"] = self.isSuccess!
            }
            if self.toUnitId != nil {
                map["ToUnitId"] = self.toUnitId!
            }
            if self.toUnitUserId != nil {
                map["ToUnitUserId"] = self.toUnitUserId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsSuccess") {
                self.isSuccess = dict["IsSuccess"] as! Bool
            }
            if dict.keys.contains("ToUnitId") {
                self.toUnitId = dict["ToUnitId"] as! Int64
            }
            if dict.keys.contains("ToUnitUserId") {
                self.toUnitUserId = dict["ToUnitUserId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: AllocateCostUnitResourceResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = AllocateCostUnitResourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AllocateCostUnitResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllocateCostUnitResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AllocateCostUnitResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyInvoiceRequest : Tea.TeaModel {
    public var addressId: Int64?

    public var applyUserNick: String?

    public var customerId: Int64?

    public var invoiceAmount: Int64?

    public var invoiceByAmount: Bool?

    public var invoicingType: Int32?

    public var ownerId: Int64?

    public var processWay: Int32?

    public var selectedIds: [Int64]?

    public var userRemark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressId != nil {
            map["AddressId"] = self.addressId!
        }
        if self.applyUserNick != nil {
            map["ApplyUserNick"] = self.applyUserNick!
        }
        if self.customerId != nil {
            map["CustomerId"] = self.customerId!
        }
        if self.invoiceAmount != nil {
            map["InvoiceAmount"] = self.invoiceAmount!
        }
        if self.invoiceByAmount != nil {
            map["InvoiceByAmount"] = self.invoiceByAmount!
        }
        if self.invoicingType != nil {
            map["InvoicingType"] = self.invoicingType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.processWay != nil {
            map["ProcessWay"] = self.processWay!
        }
        if self.selectedIds != nil {
            map["SelectedIds"] = self.selectedIds!
        }
        if self.userRemark != nil {
            map["UserRemark"] = self.userRemark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddressId") {
            self.addressId = dict["AddressId"] as! Int64
        }
        if dict.keys.contains("ApplyUserNick") {
            self.applyUserNick = dict["ApplyUserNick"] as! String
        }
        if dict.keys.contains("CustomerId") {
            self.customerId = dict["CustomerId"] as! Int64
        }
        if dict.keys.contains("InvoiceAmount") {
            self.invoiceAmount = dict["InvoiceAmount"] as! Int64
        }
        if dict.keys.contains("InvoiceByAmount") {
            self.invoiceByAmount = dict["InvoiceByAmount"] as! Bool
        }
        if dict.keys.contains("InvoicingType") {
            self.invoicingType = dict["InvoicingType"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProcessWay") {
            self.processWay = dict["ProcessWay"] as! Int32
        }
        if dict.keys.contains("SelectedIds") {
            self.selectedIds = dict["SelectedIds"] as! [Int64]
        }
        if dict.keys.contains("UserRemark") {
            self.userRemark = dict["UserRemark"] as! String
        }
    }
}

public class ApplyInvoiceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var invoiceApplyId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.invoiceApplyId != nil {
                map["InvoiceApplyId"] = self.invoiceApplyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InvoiceApplyId") {
                self.invoiceApplyId = dict["InvoiceApplyId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: ApplyInvoiceResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ApplyInvoiceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ApplyInvoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyInvoiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ApplyInvoiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelOrderRequest : Tea.TeaModel {
    public var orderId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class CancelOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var hostId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostId") {
                self.hostId = dict["HostId"] as! String
            }
        }
    }
    public var code: String?

    public var data: CancelOrderResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CancelOrderResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CancelOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeResellerConsumeAmountRequest : Tea.TeaModel {
    public var adjustType: String?

    public var amount: String?

    public var businessType: String?

    public var currency: String?

    public var extendMap: String?

    public var outBizId: String?

    public var ownerId: Int64?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adjustType != nil {
            map["AdjustType"] = self.adjustType!
        }
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.extendMap != nil {
            map["ExtendMap"] = self.extendMap!
        }
        if self.outBizId != nil {
            map["OutBizId"] = self.outBizId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdjustType") {
            self.adjustType = dict["AdjustType"] as! String
        }
        if dict.keys.contains("Amount") {
            self.amount = dict["Amount"] as! String
        }
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("ExtendMap") {
            self.extendMap = dict["ExtendMap"] as! String
        }
        if dict.keys.contains("OutBizId") {
            self.outBizId = dict["OutBizId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
    }
}

public class ChangeResellerConsumeAmountResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ChangeResellerConsumeAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResellerConsumeAmountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ChangeResellerConsumeAmountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfirmRelationRequest : Tea.TeaModel {
    public var childUserId: Int64?

    public var confirmCode: String?

    public var parentUserId: Int64?

    public var permissionCodes: [String]?

    public var relationId: Int64?

    public var relationType: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.childUserId != nil {
            map["ChildUserId"] = self.childUserId!
        }
        if self.confirmCode != nil {
            map["ConfirmCode"] = self.confirmCode!
        }
        if self.parentUserId != nil {
            map["ParentUserId"] = self.parentUserId!
        }
        if self.permissionCodes != nil {
            map["PermissionCodes"] = self.permissionCodes!
        }
        if self.relationId != nil {
            map["RelationId"] = self.relationId!
        }
        if self.relationType != nil {
            map["RelationType"] = self.relationType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChildUserId") {
            self.childUserId = dict["ChildUserId"] as! Int64
        }
        if dict.keys.contains("ConfirmCode") {
            self.confirmCode = dict["ConfirmCode"] as! String
        }
        if dict.keys.contains("ParentUserId") {
            self.parentUserId = dict["ParentUserId"] as! Int64
        }
        if dict.keys.contains("PermissionCodes") {
            self.permissionCodes = dict["PermissionCodes"] as! [String]
        }
        if dict.keys.contains("RelationId") {
            self.relationId = dict["RelationId"] as! Int64
        }
        if dict.keys.contains("RelationType") {
            self.relationType = dict["RelationType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ConfirmRelationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var hostId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostId") {
                self.hostId = dict["HostId"] as! String
            }
        }
    }
    public var code: String?

    public var data: ConfirmRelationResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ConfirmRelationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ConfirmRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfirmRelationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ConfirmRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConvertChargeTypeRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerId: Int64?

    public var period: Int32?

    public var productCode: String?

    public var productType: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class ConvertChargeTypeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: ConvertChargeTypeResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ConvertChargeTypeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ConvertChargeTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConvertChargeTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ConvertChargeTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAgAccountRequest : Tea.TeaModel {
    public var accountAttr: String?

    public var cityName: String?

    public var enterpriseName: String?

    public var firstName: String?

    public var lastName: String?

    public var loginEmail: String?

    public var nationCode: String?

    public var postcode: String?

    public var provinceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountAttr != nil {
            map["AccountAttr"] = self.accountAttr!
        }
        if self.cityName != nil {
            map["CityName"] = self.cityName!
        }
        if self.enterpriseName != nil {
            map["EnterpriseName"] = self.enterpriseName!
        }
        if self.firstName != nil {
            map["FirstName"] = self.firstName!
        }
        if self.lastName != nil {
            map["LastName"] = self.lastName!
        }
        if self.loginEmail != nil {
            map["LoginEmail"] = self.loginEmail!
        }
        if self.nationCode != nil {
            map["NationCode"] = self.nationCode!
        }
        if self.postcode != nil {
            map["Postcode"] = self.postcode!
        }
        if self.provinceName != nil {
            map["ProvinceName"] = self.provinceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountAttr") {
            self.accountAttr = dict["AccountAttr"] as! String
        }
        if dict.keys.contains("CityName") {
            self.cityName = dict["CityName"] as! String
        }
        if dict.keys.contains("EnterpriseName") {
            self.enterpriseName = dict["EnterpriseName"] as! String
        }
        if dict.keys.contains("FirstName") {
            self.firstName = dict["FirstName"] as! String
        }
        if dict.keys.contains("LastName") {
            self.lastName = dict["LastName"] as! String
        }
        if dict.keys.contains("LoginEmail") {
            self.loginEmail = dict["LoginEmail"] as! String
        }
        if dict.keys.contains("NationCode") {
            self.nationCode = dict["NationCode"] as! String
        }
        if dict.keys.contains("Postcode") {
            self.postcode = dict["Postcode"] as! String
        }
        if dict.keys.contains("ProvinceName") {
            self.provinceName = dict["ProvinceName"] as! String
        }
    }
}

public class CreateAgAccountResponseBody : Tea.TeaModel {
    public class AgRelationDto : Tea.TeaModel {
        public var mpk: String?

        public var pk: String?

        public var ramAdminRoleName: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mpk != nil {
                map["Mpk"] = self.mpk!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            if self.ramAdminRoleName != nil {
                map["RamAdminRoleName"] = self.ramAdminRoleName!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Mpk") {
                self.mpk = dict["Mpk"] as! String
            }
            if dict.keys.contains("Pk") {
                self.pk = dict["Pk"] as! String
            }
            if dict.keys.contains("RamAdminRoleName") {
                self.ramAdminRoleName = dict["RamAdminRoleName"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var agRelationDto: CreateAgAccountResponseBody.AgRelationDto?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.agRelationDto?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agRelationDto != nil {
            map["AgRelationDto"] = self.agRelationDto?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgRelationDto") {
            var model = CreateAgAccountResponseBody.AgRelationDto()
            model.fromMap(dict["AgRelationDto"] as! [String: Any])
            self.agRelationDto = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateAgAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAgAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAgAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCostUnitRequest : Tea.TeaModel {
    public class UnitEntityList : Tea.TeaModel {
        public var ownerUid: Int64?

        public var parentUnitId: Int64?

        public var unitName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ownerUid != nil {
                map["OwnerUid"] = self.ownerUid!
            }
            if self.parentUnitId != nil {
                map["ParentUnitId"] = self.parentUnitId!
            }
            if self.unitName != nil {
                map["UnitName"] = self.unitName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OwnerUid") {
                self.ownerUid = dict["OwnerUid"] as! Int64
            }
            if dict.keys.contains("ParentUnitId") {
                self.parentUnitId = dict["ParentUnitId"] as! Int64
            }
            if dict.keys.contains("UnitName") {
                self.unitName = dict["UnitName"] as! String
            }
        }
    }
    public var unitEntityList: [CreateCostUnitRequest.UnitEntityList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.unitEntityList != nil {
            var tmp : [Any] = []
            for k in self.unitEntityList! {
                tmp.append(k.toMap())
            }
            map["UnitEntityList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UnitEntityList") {
            self.unitEntityList = dict["UnitEntityList"] as! [CreateCostUnitRequest.UnitEntityList]
        }
    }
}

public class CreateCostUnitResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CostUnitDtoList : Tea.TeaModel {
            public var ownerUid: Int64?

            public var parentUnitId: Int64?

            public var unitId: Int64?

            public var unitName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ownerUid != nil {
                    map["OwnerUid"] = self.ownerUid!
                }
                if self.parentUnitId != nil {
                    map["ParentUnitId"] = self.parentUnitId!
                }
                if self.unitId != nil {
                    map["UnitId"] = self.unitId!
                }
                if self.unitName != nil {
                    map["UnitName"] = self.unitName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OwnerUid") {
                    self.ownerUid = dict["OwnerUid"] as! Int64
                }
                if dict.keys.contains("ParentUnitId") {
                    self.parentUnitId = dict["ParentUnitId"] as! Int64
                }
                if dict.keys.contains("UnitId") {
                    self.unitId = dict["UnitId"] as! Int64
                }
                if dict.keys.contains("UnitName") {
                    self.unitName = dict["UnitName"] as! String
                }
            }
        }
        public var costUnitDtoList: [CreateCostUnitResponseBody.Data.CostUnitDtoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.costUnitDtoList != nil {
                var tmp : [Any] = []
                for k in self.costUnitDtoList! {
                    tmp.append(k.toMap())
                }
                map["CostUnitDtoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CostUnitDtoList") {
                self.costUnitDtoList = dict["CostUnitDtoList"] as! [CreateCostUnitResponseBody.Data.CostUnitDtoList]
            }
        }
    }
    public var code: String?

    public var data: CreateCostUnitResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateCostUnitResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateCostUnitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCostUnitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateCostUnitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var code: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clientToken: String?

    public var logistics: String?

    public var ownerId: Int64?

    public var parameter: [CreateInstanceRequest.Parameter]?

    public var period: Int32?

    public var productCode: String?

    public var productType: String?

    public var renewPeriod: Int32?

    public var renewalStatus: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.logistics != nil {
            map["Logistics"] = self.logistics!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.parameter != nil {
            var tmp : [Any] = []
            for k in self.parameter! {
                tmp.append(k.toMap())
            }
            map["Parameter"] = tmp
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.renewPeriod != nil {
            map["RenewPeriod"] = self.renewPeriod!
        }
        if self.renewalStatus != nil {
            map["RenewalStatus"] = self.renewalStatus!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Logistics") {
            self.logistics = dict["Logistics"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Parameter") {
            self.parameter = dict["Parameter"] as! [CreateInstanceRequest.Parameter]
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("RenewPeriod") {
            self.renewPeriod = dict["RenewPeriod"] as! Int32
        }
        if dict.keys.contains("RenewalStatus") {
            self.renewalStatus = dict["RenewalStatus"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var orderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateInstanceResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateResellerUserQuotaRequest : Tea.TeaModel {
    public var amount: String?

    public var currency: String?

    public var outBizId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.outBizId != nil {
            map["OutBizId"] = self.outBizId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Amount") {
            self.amount = dict["Amount"] as! String
        }
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("OutBizId") {
            self.outBizId = dict["OutBizId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class CreateResellerUserQuotaResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateResellerUserQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResellerUserQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateResellerUserQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateResourcePackageRequest : Tea.TeaModel {
    public var duration: Int32?

    public var effectiveDate: String?

    public var ownerId: Int64?

    public var packageType: String?

    public var pricingCycle: String?

    public var productCode: String?

    public var specification: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.effectiveDate != nil {
            map["EffectiveDate"] = self.effectiveDate!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.packageType != nil {
            map["PackageType"] = self.packageType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.specification != nil {
            map["Specification"] = self.specification!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("EffectiveDate") {
            self.effectiveDate = dict["EffectiveDate"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PackageType") {
            self.packageType = dict["PackageType"] as! String
        }
        if dict.keys.contains("PricingCycle") {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Specification") {
            self.specification = dict["Specification"] as! String
        }
    }
}

public class CreateResourcePackageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var orderId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: CreateResourcePackageResponseBody.Data?

    public var message: String?

    public var orderId: Int64?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateResourcePackageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateResourcePackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourcePackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateResourcePackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSavingsPlansInstanceRequest : Tea.TeaModel {
    public var commodityCode: String?

    public var duration: String?

    public var effectiveDate: String?

    public var payMode: String?

    public var poolValue: String?

    public var pricingCycle: String?

    public var region: String?

    public var specType: String?

    public var specification: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.effectiveDate != nil {
            map["EffectiveDate"] = self.effectiveDate!
        }
        if self.payMode != nil {
            map["PayMode"] = self.payMode!
        }
        if self.poolValue != nil {
            map["PoolValue"] = self.poolValue!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
        }
        if self.specification != nil {
            map["Specification"] = self.specification!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommodityCode") {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! String
        }
        if dict.keys.contains("EffectiveDate") {
            self.effectiveDate = dict["EffectiveDate"] as! String
        }
        if dict.keys.contains("PayMode") {
            self.payMode = dict["PayMode"] as! String
        }
        if dict.keys.contains("PoolValue") {
            self.poolValue = dict["PoolValue"] as! String
        }
        if dict.keys.contains("PricingCycle") {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SpecType") {
            self.specType = dict["SpecType"] as! String
        }
        if dict.keys.contains("Specification") {
            self.specification = dict["Specification"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateSavingsPlansInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: CreateSavingsPlansInstanceResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateSavingsPlansInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateSavingsPlansInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSavingsPlansInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateSavingsPlansInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCostUnitRequest : Tea.TeaModel {
    public var ownerUid: Int64?

    public var unitId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerUid != nil {
            map["OwnerUid"] = self.ownerUid!
        }
        if self.unitId != nil {
            map["UnitId"] = self.unitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerUid") {
            self.ownerUid = dict["OwnerUid"] as! Int64
        }
        if dict.keys.contains("UnitId") {
            self.unitId = dict["UnitId"] as! Int64
        }
    }
}

public class DeleteCostUnitResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var isSuccess: Bool?

        public var ownerUid: Int64?

        public var unitId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isSuccess != nil {
                map["IsSuccess"] = self.isSuccess!
            }
            if self.ownerUid != nil {
                map["OwnerUid"] = self.ownerUid!
            }
            if self.unitId != nil {
                map["UnitId"] = self.unitId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsSuccess") {
                self.isSuccess = dict["IsSuccess"] as! Bool
            }
            if dict.keys.contains("OwnerUid") {
                self.ownerUid = dict["OwnerUid"] as! Int64
            }
            if dict.keys.contains("UnitId") {
                self.unitId = dict["UnitId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: DeleteCostUnitResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DeleteCostUnitResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteCostUnitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCostUnitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteCostUnitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceBillRequest : Tea.TeaModel {
    public var billOwnerId: Int64?

    public var billingCycle: String?

    public var billingDate: String?

    public var granularity: String?

    public var instanceID: String?

    public var isBillingItem: Bool?

    public var isHideZeroCharge: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerId: Int64?

    public var productCode: String?

    public var productType: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwnerId != nil {
            map["BillOwnerId"] = self.billOwnerId!
        }
        if self.billingCycle != nil {
            map["BillingCycle"] = self.billingCycle!
        }
        if self.billingDate != nil {
            map["BillingDate"] = self.billingDate!
        }
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.instanceID != nil {
            map["InstanceID"] = self.instanceID!
        }
        if self.isBillingItem != nil {
            map["IsBillingItem"] = self.isBillingItem!
        }
        if self.isHideZeroCharge != nil {
            map["IsHideZeroCharge"] = self.isHideZeroCharge!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwnerId") {
            self.billOwnerId = dict["BillOwnerId"] as! Int64
        }
        if dict.keys.contains("BillingCycle") {
            self.billingCycle = dict["BillingCycle"] as! String
        }
        if dict.keys.contains("BillingDate") {
            self.billingDate = dict["BillingDate"] as! String
        }
        if dict.keys.contains("Granularity") {
            self.granularity = dict["Granularity"] as! String
        }
        if dict.keys.contains("InstanceID") {
            self.instanceID = dict["InstanceID"] as! String
        }
        if dict.keys.contains("IsBillingItem") {
            self.isBillingItem = dict["IsBillingItem"] as! Bool
        }
        if dict.keys.contains("IsHideZeroCharge") {
            self.isHideZeroCharge = dict["IsHideZeroCharge"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class DescribeInstanceBillResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var adjustAmount: Double?

            public var billAccountID: String?

            public var billAccountName: String?

            public var billingDate: String?

            public var billingItem: String?

            public var billingItemCode: String?

            public var billingType: String?

            public var bizType: String?

            public var cashAmount: Double?

            public var commodityCode: String?

            public var costUnit: String?

            public var currency: String?

            public var deductedByCashCoupons: Double?

            public var deductedByCoupons: Double?

            public var deductedByPrepaidCard: Double?

            public var deductedByResourcePackage: String?

            public var instanceConfig: String?

            public var instanceID: String?

            public var instanceSpec: String?

            public var internetIP: String?

            public var intranetIP: String?

            public var invoiceDiscount: Double?

            public var item: String?

            public var itemName: String?

            public var listPrice: String?

            public var listPriceUnit: String?

            public var nickName: String?

            public var outstandingAmount: Double?

            public var ownerID: String?

            public var paymentAmount: Double?

            public var pipCode: String?

            public var pretaxAmount: Double?

            public var pretaxGrossAmount: Double?

            public var productCode: String?

            public var productDetail: String?

            public var productName: String?

            public var productType: String?

            public var region: String?

            public var resourceGroup: String?

            public var servicePeriod: String?

            public var servicePeriodUnit: String?

            public var subscriptionType: String?

            public var tag: String?

            public var usage: String?

            public var usageUnit: String?

            public var zone: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.adjustAmount != nil {
                    map["AdjustAmount"] = self.adjustAmount!
                }
                if self.billAccountID != nil {
                    map["BillAccountID"] = self.billAccountID!
                }
                if self.billAccountName != nil {
                    map["BillAccountName"] = self.billAccountName!
                }
                if self.billingDate != nil {
                    map["BillingDate"] = self.billingDate!
                }
                if self.billingItem != nil {
                    map["BillingItem"] = self.billingItem!
                }
                if self.billingItemCode != nil {
                    map["BillingItemCode"] = self.billingItemCode!
                }
                if self.billingType != nil {
                    map["BillingType"] = self.billingType!
                }
                if self.bizType != nil {
                    map["BizType"] = self.bizType!
                }
                if self.cashAmount != nil {
                    map["CashAmount"] = self.cashAmount!
                }
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.costUnit != nil {
                    map["CostUnit"] = self.costUnit!
                }
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.deductedByCashCoupons != nil {
                    map["DeductedByCashCoupons"] = self.deductedByCashCoupons!
                }
                if self.deductedByCoupons != nil {
                    map["DeductedByCoupons"] = self.deductedByCoupons!
                }
                if self.deductedByPrepaidCard != nil {
                    map["DeductedByPrepaidCard"] = self.deductedByPrepaidCard!
                }
                if self.deductedByResourcePackage != nil {
                    map["DeductedByResourcePackage"] = self.deductedByResourcePackage!
                }
                if self.instanceConfig != nil {
                    map["InstanceConfig"] = self.instanceConfig!
                }
                if self.instanceID != nil {
                    map["InstanceID"] = self.instanceID!
                }
                if self.instanceSpec != nil {
                    map["InstanceSpec"] = self.instanceSpec!
                }
                if self.internetIP != nil {
                    map["InternetIP"] = self.internetIP!
                }
                if self.intranetIP != nil {
                    map["IntranetIP"] = self.intranetIP!
                }
                if self.invoiceDiscount != nil {
                    map["InvoiceDiscount"] = self.invoiceDiscount!
                }
                if self.item != nil {
                    map["Item"] = self.item!
                }
                if self.itemName != nil {
                    map["ItemName"] = self.itemName!
                }
                if self.listPrice != nil {
                    map["ListPrice"] = self.listPrice!
                }
                if self.listPriceUnit != nil {
                    map["ListPriceUnit"] = self.listPriceUnit!
                }
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                if self.outstandingAmount != nil {
                    map["OutstandingAmount"] = self.outstandingAmount!
                }
                if self.ownerID != nil {
                    map["OwnerID"] = self.ownerID!
                }
                if self.paymentAmount != nil {
                    map["PaymentAmount"] = self.paymentAmount!
                }
                if self.pipCode != nil {
                    map["PipCode"] = self.pipCode!
                }
                if self.pretaxAmount != nil {
                    map["PretaxAmount"] = self.pretaxAmount!
                }
                if self.pretaxGrossAmount != nil {
                    map["PretaxGrossAmount"] = self.pretaxGrossAmount!
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                if self.productDetail != nil {
                    map["ProductDetail"] = self.productDetail!
                }
                if self.productName != nil {
                    map["ProductName"] = self.productName!
                }
                if self.productType != nil {
                    map["ProductType"] = self.productType!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.resourceGroup != nil {
                    map["ResourceGroup"] = self.resourceGroup!
                }
                if self.servicePeriod != nil {
                    map["ServicePeriod"] = self.servicePeriod!
                }
                if self.servicePeriodUnit != nil {
                    map["ServicePeriodUnit"] = self.servicePeriodUnit!
                }
                if self.subscriptionType != nil {
                    map["SubscriptionType"] = self.subscriptionType!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                if self.usage != nil {
                    map["Usage"] = self.usage!
                }
                if self.usageUnit != nil {
                    map["UsageUnit"] = self.usageUnit!
                }
                if self.zone != nil {
                    map["Zone"] = self.zone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AdjustAmount") {
                    self.adjustAmount = dict["AdjustAmount"] as! Double
                }
                if dict.keys.contains("BillAccountID") {
                    self.billAccountID = dict["BillAccountID"] as! String
                }
                if dict.keys.contains("BillAccountName") {
                    self.billAccountName = dict["BillAccountName"] as! String
                }
                if dict.keys.contains("BillingDate") {
                    self.billingDate = dict["BillingDate"] as! String
                }
                if dict.keys.contains("BillingItem") {
                    self.billingItem = dict["BillingItem"] as! String
                }
                if dict.keys.contains("BillingItemCode") {
                    self.billingItemCode = dict["BillingItemCode"] as! String
                }
                if dict.keys.contains("BillingType") {
                    self.billingType = dict["BillingType"] as! String
                }
                if dict.keys.contains("BizType") {
                    self.bizType = dict["BizType"] as! String
                }
                if dict.keys.contains("CashAmount") {
                    self.cashAmount = dict["CashAmount"] as! Double
                }
                if dict.keys.contains("CommodityCode") {
                    self.commodityCode = dict["CommodityCode"] as! String
                }
                if dict.keys.contains("CostUnit") {
                    self.costUnit = dict["CostUnit"] as! String
                }
                if dict.keys.contains("Currency") {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DeductedByCashCoupons") {
                    self.deductedByCashCoupons = dict["DeductedByCashCoupons"] as! Double
                }
                if dict.keys.contains("DeductedByCoupons") {
                    self.deductedByCoupons = dict["DeductedByCoupons"] as! Double
                }
                if dict.keys.contains("DeductedByPrepaidCard") {
                    self.deductedByPrepaidCard = dict["DeductedByPrepaidCard"] as! Double
                }
                if dict.keys.contains("DeductedByResourcePackage") {
                    self.deductedByResourcePackage = dict["DeductedByResourcePackage"] as! String
                }
                if dict.keys.contains("InstanceConfig") {
                    self.instanceConfig = dict["InstanceConfig"] as! String
                }
                if dict.keys.contains("InstanceID") {
                    self.instanceID = dict["InstanceID"] as! String
                }
                if dict.keys.contains("InstanceSpec") {
                    self.instanceSpec = dict["InstanceSpec"] as! String
                }
                if dict.keys.contains("InternetIP") {
                    self.internetIP = dict["InternetIP"] as! String
                }
                if dict.keys.contains("IntranetIP") {
                    self.intranetIP = dict["IntranetIP"] as! String
                }
                if dict.keys.contains("InvoiceDiscount") {
                    self.invoiceDiscount = dict["InvoiceDiscount"] as! Double
                }
                if dict.keys.contains("Item") {
                    self.item = dict["Item"] as! String
                }
                if dict.keys.contains("ItemName") {
                    self.itemName = dict["ItemName"] as! String
                }
                if dict.keys.contains("ListPrice") {
                    self.listPrice = dict["ListPrice"] as! String
                }
                if dict.keys.contains("ListPriceUnit") {
                    self.listPriceUnit = dict["ListPriceUnit"] as! String
                }
                if dict.keys.contains("NickName") {
                    self.nickName = dict["NickName"] as! String
                }
                if dict.keys.contains("OutstandingAmount") {
                    self.outstandingAmount = dict["OutstandingAmount"] as! Double
                }
                if dict.keys.contains("OwnerID") {
                    self.ownerID = dict["OwnerID"] as! String
                }
                if dict.keys.contains("PaymentAmount") {
                    self.paymentAmount = dict["PaymentAmount"] as! Double
                }
                if dict.keys.contains("PipCode") {
                    self.pipCode = dict["PipCode"] as! String
                }
                if dict.keys.contains("PretaxAmount") {
                    self.pretaxAmount = dict["PretaxAmount"] as! Double
                }
                if dict.keys.contains("PretaxGrossAmount") {
                    self.pretaxGrossAmount = dict["PretaxGrossAmount"] as! Double
                }
                if dict.keys.contains("ProductCode") {
                    self.productCode = dict["ProductCode"] as! String
                }
                if dict.keys.contains("ProductDetail") {
                    self.productDetail = dict["ProductDetail"] as! String
                }
                if dict.keys.contains("ProductName") {
                    self.productName = dict["ProductName"] as! String
                }
                if dict.keys.contains("ProductType") {
                    self.productType = dict["ProductType"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ResourceGroup") {
                    self.resourceGroup = dict["ResourceGroup"] as! String
                }
                if dict.keys.contains("ServicePeriod") {
                    self.servicePeriod = dict["ServicePeriod"] as! String
                }
                if dict.keys.contains("ServicePeriodUnit") {
                    self.servicePeriodUnit = dict["ServicePeriodUnit"] as! String
                }
                if dict.keys.contains("SubscriptionType") {
                    self.subscriptionType = dict["SubscriptionType"] as! String
                }
                if dict.keys.contains("Tag") {
                    self.tag = dict["Tag"] as! String
                }
                if dict.keys.contains("Usage") {
                    self.usage = dict["Usage"] as! String
                }
                if dict.keys.contains("UsageUnit") {
                    self.usageUnit = dict["UsageUnit"] as! String
                }
                if dict.keys.contains("Zone") {
                    self.zone = dict["Zone"] as! String
                }
            }
        }
        public var accountID: String?

        public var accountName: String?

        public var billingCycle: String?

        public var items: [DescribeInstanceBillResponseBody.Data.Items]?

        public var maxResults: Int32?

        public var nextToken: String?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountID != nil {
                map["AccountID"] = self.accountID!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.billingCycle != nil {
                map["BillingCycle"] = self.billingCycle!
            }
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountID") {
                self.accountID = dict["AccountID"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("BillingCycle") {
                self.billingCycle = dict["BillingCycle"] as! String
            }
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [DescribeInstanceBillResponseBody.Data.Items]
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: DescribeInstanceBillResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeInstanceBillResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeInstanceBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInstanceBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePricingModuleRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var productCode: String?

    public var productType: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class DescribePricingModuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AttributeList : Tea.TeaModel {
            public class Attribute : Tea.TeaModel {
                public class Values : Tea.TeaModel {
                    public class AttributeValue : Tea.TeaModel {
                        public var name: String?

                        public var remark: String?

                        public var type: String?

                        public var value: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            if self.remark != nil {
                                map["Remark"] = self.remark!
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Name") {
                                self.name = dict["Name"] as! String
                            }
                            if dict.keys.contains("Remark") {
                                self.remark = dict["Remark"] as! String
                            }
                            if dict.keys.contains("Type") {
                                self.type = dict["Type"] as! String
                            }
                            if dict.keys.contains("Value") {
                                self.value = dict["Value"] as! String
                            }
                        }
                    }
                    public var attributeValue: [DescribePricingModuleResponseBody.Data.AttributeList.Attribute.Values.AttributeValue]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.attributeValue != nil {
                            var tmp : [Any] = []
                            for k in self.attributeValue! {
                                tmp.append(k.toMap())
                            }
                            map["AttributeValue"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AttributeValue") {
                            self.attributeValue = dict["AttributeValue"] as! [DescribePricingModuleResponseBody.Data.AttributeList.Attribute.Values.AttributeValue]
                        }
                    }
                }
                public var code: String?

                public var name: String?

                public var unit: String?

                public var values: DescribePricingModuleResponseBody.Data.AttributeList.Attribute.Values?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.values?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.code != nil {
                        map["Code"] = self.code!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.unit != nil {
                        map["Unit"] = self.unit!
                    }
                    if self.values != nil {
                        map["Values"] = self.values?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Code") {
                        self.code = dict["Code"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Unit") {
                        self.unit = dict["Unit"] as! String
                    }
                    if dict.keys.contains("Values") {
                        var model = DescribePricingModuleResponseBody.Data.AttributeList.Attribute.Values()
                        model.fromMap(dict["Values"] as! [String: Any])
                        self.values = model
                    }
                }
            }
            public var attribute: [DescribePricingModuleResponseBody.Data.AttributeList.Attribute]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attribute != nil {
                    var tmp : [Any] = []
                    for k in self.attribute! {
                        tmp.append(k.toMap())
                    }
                    map["Attribute"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Attribute") {
                    self.attribute = dict["Attribute"] as! [DescribePricingModuleResponseBody.Data.AttributeList.Attribute]
                }
            }
        }
        public class ModuleList : Tea.TeaModel {
            public class Module : Tea.TeaModel {
                public class ConfigList : Tea.TeaModel {
                    public var configList: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.configList != nil {
                            map["ConfigList"] = self.configList!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ConfigList") {
                            self.configList = dict["ConfigList"] as! [String]
                        }
                    }
                }
                public var configList: DescribePricingModuleResponseBody.Data.ModuleList.Module.ConfigList?

                public var currency: String?

                public var moduleCode: String?

                public var moduleName: String?

                public var priceType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.configList?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.configList != nil {
                        map["ConfigList"] = self.configList?.toMap()
                    }
                    if self.currency != nil {
                        map["Currency"] = self.currency!
                    }
                    if self.moduleCode != nil {
                        map["ModuleCode"] = self.moduleCode!
                    }
                    if self.moduleName != nil {
                        map["ModuleName"] = self.moduleName!
                    }
                    if self.priceType != nil {
                        map["PriceType"] = self.priceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConfigList") {
                        var model = DescribePricingModuleResponseBody.Data.ModuleList.Module.ConfigList()
                        model.fromMap(dict["ConfigList"] as! [String: Any])
                        self.configList = model
                    }
                    if dict.keys.contains("Currency") {
                        self.currency = dict["Currency"] as! String
                    }
                    if dict.keys.contains("ModuleCode") {
                        self.moduleCode = dict["ModuleCode"] as! String
                    }
                    if dict.keys.contains("ModuleName") {
                        self.moduleName = dict["ModuleName"] as! String
                    }
                    if dict.keys.contains("PriceType") {
                        self.priceType = dict["PriceType"] as! String
                    }
                }
            }
            public var module: [DescribePricingModuleResponseBody.Data.ModuleList.Module]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.module != nil {
                    var tmp : [Any] = []
                    for k in self.module! {
                        tmp.append(k.toMap())
                    }
                    map["Module"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Module") {
                    self.module = dict["Module"] as! [DescribePricingModuleResponseBody.Data.ModuleList.Module]
                }
            }
        }
        public var attributeList: DescribePricingModuleResponseBody.Data.AttributeList?

        public var moduleList: DescribePricingModuleResponseBody.Data.ModuleList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.attributeList?.validate()
            try self.moduleList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributeList != nil {
                map["AttributeList"] = self.attributeList?.toMap()
            }
            if self.moduleList != nil {
                map["ModuleList"] = self.moduleList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttributeList") {
                var model = DescribePricingModuleResponseBody.Data.AttributeList()
                model.fromMap(dict["AttributeList"] as! [String: Any])
                self.attributeList = model
            }
            if dict.keys.contains("ModuleList") {
                var model = DescribePricingModuleResponseBody.Data.ModuleList()
                model.fromMap(dict["ModuleList"] as! [String: Any])
                self.moduleList = model
            }
        }
    }
    public var code: String?

    public var data: DescribePricingModuleResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribePricingModuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribePricingModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePricingModuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribePricingModuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeResourceCoverageDetailRequest : Tea.TeaModel {
    public var billOwnerId: Int64?

    public var endPeriod: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var periodType: String?

    public var resourceType: String?

    public var startPeriod: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwnerId != nil {
            map["BillOwnerId"] = self.billOwnerId!
        }
        if self.endPeriod != nil {
            map["EndPeriod"] = self.endPeriod!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.periodType != nil {
            map["PeriodType"] = self.periodType!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.startPeriod != nil {
            map["StartPeriod"] = self.startPeriod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwnerId") {
            self.billOwnerId = dict["BillOwnerId"] as! Int64
        }
        if dict.keys.contains("EndPeriod") {
            self.endPeriod = dict["EndPeriod"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PeriodType") {
            self.periodType = dict["PeriodType"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StartPeriod") {
            self.startPeriod = dict["StartPeriod"] as! String
        }
    }
}

public class DescribeResourceCoverageDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var capacityUnit: String?

            public var commodityCode: String?

            public var commodityName: String?

            public var coveragePercentage: Double?

            public var currency: String?

            public var deductQuantity: Double?

            public var endTime: String?

            public var instanceId: String?

            public var instanceSpec: String?

            public var paymentAmount: Double?

            public var productCode: String?

            public var productName: String?

            public var region: String?

            public var regionNo: String?

            public var startTime: String?

            public var totalQuantity: Double?

            public var userId: String?

            public var userName: String?

            public var zone: String?

            public var zoneName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capacityUnit != nil {
                    map["CapacityUnit"] = self.capacityUnit!
                }
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.commodityName != nil {
                    map["CommodityName"] = self.commodityName!
                }
                if self.coveragePercentage != nil {
                    map["CoveragePercentage"] = self.coveragePercentage!
                }
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.deductQuantity != nil {
                    map["DeductQuantity"] = self.deductQuantity!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceSpec != nil {
                    map["InstanceSpec"] = self.instanceSpec!
                }
                if self.paymentAmount != nil {
                    map["PaymentAmount"] = self.paymentAmount!
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                if self.productName != nil {
                    map["ProductName"] = self.productName!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.regionNo != nil {
                    map["RegionNo"] = self.regionNo!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.totalQuantity != nil {
                    map["TotalQuantity"] = self.totalQuantity!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                if self.zone != nil {
                    map["Zone"] = self.zone!
                }
                if self.zoneName != nil {
                    map["ZoneName"] = self.zoneName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CapacityUnit") {
                    self.capacityUnit = dict["CapacityUnit"] as! String
                }
                if dict.keys.contains("CommodityCode") {
                    self.commodityCode = dict["CommodityCode"] as! String
                }
                if dict.keys.contains("CommodityName") {
                    self.commodityName = dict["CommodityName"] as! String
                }
                if dict.keys.contains("CoveragePercentage") {
                    self.coveragePercentage = dict["CoveragePercentage"] as! Double
                }
                if dict.keys.contains("Currency") {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DeductQuantity") {
                    self.deductQuantity = dict["DeductQuantity"] as! Double
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceSpec") {
                    self.instanceSpec = dict["InstanceSpec"] as! String
                }
                if dict.keys.contains("PaymentAmount") {
                    self.paymentAmount = dict["PaymentAmount"] as! Double
                }
                if dict.keys.contains("ProductCode") {
                    self.productCode = dict["ProductCode"] as! String
                }
                if dict.keys.contains("ProductName") {
                    self.productName = dict["ProductName"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("RegionNo") {
                    self.regionNo = dict["RegionNo"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("TotalQuantity") {
                    self.totalQuantity = dict["TotalQuantity"] as! Double
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
                if dict.keys.contains("Zone") {
                    self.zone = dict["Zone"] as! String
                }
                if dict.keys.contains("ZoneName") {
                    self.zoneName = dict["ZoneName"] as! String
                }
            }
        }
        public var items: [DescribeResourceCoverageDetailResponseBody.Data.Items]?

        public var maxResults: Int32?

        public var nextToken: String?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [DescribeResourceCoverageDetailResponseBody.Data.Items]
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: DescribeResourceCoverageDetailResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeResourceCoverageDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeResourceCoverageDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceCoverageDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeResourceCoverageDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeResourceCoverageTotalRequest : Tea.TeaModel {
    public var billOwnerId: Int64?

    public var endPeriod: String?

    public var periodType: String?

    public var resourceType: String?

    public var startPeriod: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwnerId != nil {
            map["BillOwnerId"] = self.billOwnerId!
        }
        if self.endPeriod != nil {
            map["EndPeriod"] = self.endPeriod!
        }
        if self.periodType != nil {
            map["PeriodType"] = self.periodType!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.startPeriod != nil {
            map["StartPeriod"] = self.startPeriod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwnerId") {
            self.billOwnerId = dict["BillOwnerId"] as! Int64
        }
        if dict.keys.contains("EndPeriod") {
            self.endPeriod = dict["EndPeriod"] as! String
        }
        if dict.keys.contains("PeriodType") {
            self.periodType = dict["PeriodType"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StartPeriod") {
            self.startPeriod = dict["StartPeriod"] as! String
        }
    }
}

public class DescribeResourceCoverageTotalResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PeriodCoverage : Tea.TeaModel {
            public var coveragePercentage: Double?

            public var period: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.coveragePercentage != nil {
                    map["CoveragePercentage"] = self.coveragePercentage!
                }
                if self.period != nil {
                    map["Period"] = self.period!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CoveragePercentage") {
                    self.coveragePercentage = dict["CoveragePercentage"] as! Double
                }
                if dict.keys.contains("Period") {
                    self.period = dict["Period"] as! String
                }
            }
        }
        public class TotalCoverage : Tea.TeaModel {
            public var capacityUnit: String?

            public var coveragePercentage: Double?

            public var deductQuantity: Double?

            public var totalQuantity: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capacityUnit != nil {
                    map["CapacityUnit"] = self.capacityUnit!
                }
                if self.coveragePercentage != nil {
                    map["CoveragePercentage"] = self.coveragePercentage!
                }
                if self.deductQuantity != nil {
                    map["DeductQuantity"] = self.deductQuantity!
                }
                if self.totalQuantity != nil {
                    map["TotalQuantity"] = self.totalQuantity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CapacityUnit") {
                    self.capacityUnit = dict["CapacityUnit"] as! String
                }
                if dict.keys.contains("CoveragePercentage") {
                    self.coveragePercentage = dict["CoveragePercentage"] as! Double
                }
                if dict.keys.contains("DeductQuantity") {
                    self.deductQuantity = dict["DeductQuantity"] as! Double
                }
                if dict.keys.contains("TotalQuantity") {
                    self.totalQuantity = dict["TotalQuantity"] as! Double
                }
            }
        }
        public var periodCoverage: [DescribeResourceCoverageTotalResponseBody.Data.PeriodCoverage]?

        public var totalCoverage: DescribeResourceCoverageTotalResponseBody.Data.TotalCoverage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.totalCoverage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.periodCoverage != nil {
                var tmp : [Any] = []
                for k in self.periodCoverage! {
                    tmp.append(k.toMap())
                }
                map["PeriodCoverage"] = tmp
            }
            if self.totalCoverage != nil {
                map["TotalCoverage"] = self.totalCoverage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PeriodCoverage") {
                self.periodCoverage = dict["PeriodCoverage"] as! [DescribeResourceCoverageTotalResponseBody.Data.PeriodCoverage]
            }
            if dict.keys.contains("TotalCoverage") {
                var model = DescribeResourceCoverageTotalResponseBody.Data.TotalCoverage()
                model.fromMap(dict["TotalCoverage"] as! [String: Any])
                self.totalCoverage = model
            }
        }
    }
    public var code: String?

    public var data: DescribeResourceCoverageTotalResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeResourceCoverageTotalResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeResourceCoverageTotalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceCoverageTotalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeResourceCoverageTotalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeResourcePackageProductRequest : Tea.TeaModel {
    public var productCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
    }
}

public class DescribeResourcePackageProductResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResourcePackages : Tea.TeaModel {
            public class ResourcePackage : Tea.TeaModel {
                public class PackageTypes : Tea.TeaModel {
                    public class PackageType : Tea.TeaModel {
                        public class Properties : Tea.TeaModel {
                            public class Property : Tea.TeaModel {
                                public var name: String?

                                public var value: String?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.name != nil {
                                        map["Name"] = self.name!
                                    }
                                    if self.value != nil {
                                        map["Value"] = self.value!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("Name") {
                                        self.name = dict["Name"] as! String
                                    }
                                    if dict.keys.contains("Value") {
                                        self.value = dict["Value"] as! String
                                    }
                                }
                            }
                            public var property: [DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage.PackageTypes.PackageType.Properties.Property]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.property != nil {
                                    var tmp : [Any] = []
                                    for k in self.property! {
                                        tmp.append(k.toMap())
                                    }
                                    map["Property"] = tmp
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Property") {
                                    self.property = dict["Property"] as! [DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage.PackageTypes.PackageType.Properties.Property]
                                }
                            }
                        }
                        public class Specifications : Tea.TeaModel {
                            public class Specification : Tea.TeaModel {
                                public class AvailableDurations : Tea.TeaModel {
                                    public class AvailableDuration : Tea.TeaModel {
                                        public var name: String?

                                        public var unit: String?

                                        public var value: Int32?

                                        public override init() {
                                            super.init()
                                        }

                                        public init(_ dict: [String: Any]) {
                                            super.init()
                                            self.fromMap(dict)
                                        }

                                        public override func validate() throws -> Void {
                                        }

                                        public override func toMap() -> [String : Any] {
                                            var map = super.toMap()
                                            if self.name != nil {
                                                map["Name"] = self.name!
                                            }
                                            if self.unit != nil {
                                                map["Unit"] = self.unit!
                                            }
                                            if self.value != nil {
                                                map["Value"] = self.value!
                                            }
                                            return map
                                        }

                                        public override func fromMap(_ dict: [String: Any]) -> Void {
                                            if dict.keys.contains("Name") {
                                                self.name = dict["Name"] as! String
                                            }
                                            if dict.keys.contains("Unit") {
                                                self.unit = dict["Unit"] as! String
                                            }
                                            if dict.keys.contains("Value") {
                                                self.value = dict["Value"] as! Int32
                                            }
                                        }
                                    }
                                    public var availableDuration: [DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage.PackageTypes.PackageType.Specifications.Specification.AvailableDurations.AvailableDuration]?

                                    public override init() {
                                        super.init()
                                    }

                                    public init(_ dict: [String: Any]) {
                                        super.init()
                                        self.fromMap(dict)
                                    }

                                    public override func validate() throws -> Void {
                                    }

                                    public override func toMap() -> [String : Any] {
                                        var map = super.toMap()
                                        if self.availableDuration != nil {
                                            var tmp : [Any] = []
                                            for k in self.availableDuration! {
                                                tmp.append(k.toMap())
                                            }
                                            map["AvailableDuration"] = tmp
                                        }
                                        return map
                                    }

                                    public override func fromMap(_ dict: [String: Any]) -> Void {
                                        if dict.keys.contains("AvailableDuration") {
                                            self.availableDuration = dict["AvailableDuration"] as! [DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage.PackageTypes.PackageType.Specifications.Specification.AvailableDurations.AvailableDuration]
                                        }
                                    }
                                }
                                public var availableDurations: DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage.PackageTypes.PackageType.Specifications.Specification.AvailableDurations?

                                public var name: String?

                                public var value: String?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                    try self.availableDurations?.validate()
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.availableDurations != nil {
                                        map["AvailableDurations"] = self.availableDurations?.toMap()
                                    }
                                    if self.name != nil {
                                        map["Name"] = self.name!
                                    }
                                    if self.value != nil {
                                        map["Value"] = self.value!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("AvailableDurations") {
                                        var model = DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage.PackageTypes.PackageType.Specifications.Specification.AvailableDurations()
                                        model.fromMap(dict["AvailableDurations"] as! [String: Any])
                                        self.availableDurations = model
                                    }
                                    if dict.keys.contains("Name") {
                                        self.name = dict["Name"] as! String
                                    }
                                    if dict.keys.contains("Value") {
                                        self.value = dict["Value"] as! String
                                    }
                                }
                            }
                            public var specification: [DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage.PackageTypes.PackageType.Specifications.Specification]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.specification != nil {
                                    var tmp : [Any] = []
                                    for k in self.specification! {
                                        tmp.append(k.toMap())
                                    }
                                    map["Specification"] = tmp
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Specification") {
                                    self.specification = dict["Specification"] as! [DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage.PackageTypes.PackageType.Specifications.Specification]
                                }
                            }
                        }
                        public var code: String?

                        public var name: String?

                        public var properties: DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage.PackageTypes.PackageType.Properties?

                        public var specifications: DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage.PackageTypes.PackageType.Specifications?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.properties?.validate()
                            try self.specifications?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.code != nil {
                                map["Code"] = self.code!
                            }
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            if self.properties != nil {
                                map["Properties"] = self.properties?.toMap()
                            }
                            if self.specifications != nil {
                                map["Specifications"] = self.specifications?.toMap()
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Code") {
                                self.code = dict["Code"] as! String
                            }
                            if dict.keys.contains("Name") {
                                self.name = dict["Name"] as! String
                            }
                            if dict.keys.contains("Properties") {
                                var model = DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage.PackageTypes.PackageType.Properties()
                                model.fromMap(dict["Properties"] as! [String: Any])
                                self.properties = model
                            }
                            if dict.keys.contains("Specifications") {
                                var model = DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage.PackageTypes.PackageType.Specifications()
                                model.fromMap(dict["Specifications"] as! [String: Any])
                                self.specifications = model
                            }
                        }
                    }
                    public var packageType: [DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage.PackageTypes.PackageType]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.packageType != nil {
                            var tmp : [Any] = []
                            for k in self.packageType! {
                                tmp.append(k.toMap())
                            }
                            map["PackageType"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("PackageType") {
                            self.packageType = dict["PackageType"] as! [DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage.PackageTypes.PackageType]
                        }
                    }
                }
                public var name: String?

                public var packageTypes: DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage.PackageTypes?

                public var productCode: String?

                public var productType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.packageTypes?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.packageTypes != nil {
                        map["PackageTypes"] = self.packageTypes?.toMap()
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    if self.productType != nil {
                        map["ProductType"] = self.productType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("PackageTypes") {
                        var model = DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage.PackageTypes()
                        model.fromMap(dict["PackageTypes"] as! [String: Any])
                        self.packageTypes = model
                    }
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! String
                    }
                    if dict.keys.contains("ProductType") {
                        self.productType = dict["ProductType"] as! String
                    }
                }
            }
            public var resourcePackage: [DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourcePackage != nil {
                    var tmp : [Any] = []
                    for k in self.resourcePackage! {
                        tmp.append(k.toMap())
                    }
                    map["ResourcePackage"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourcePackage") {
                    self.resourcePackage = dict["ResourcePackage"] as! [DescribeResourcePackageProductResponseBody.Data.ResourcePackages.ResourcePackage]
                }
            }
        }
        public var resourcePackages: DescribeResourcePackageProductResponseBody.Data.ResourcePackages?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resourcePackages?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourcePackages != nil {
                map["ResourcePackages"] = self.resourcePackages?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourcePackages") {
                var model = DescribeResourcePackageProductResponseBody.Data.ResourcePackages()
                model.fromMap(dict["ResourcePackages"] as! [String: Any])
                self.resourcePackages = model
            }
        }
    }
    public var code: String?

    public var data: DescribeResourcePackageProductResponseBody.Data?

    public var message: String?

    public var orderId: Int64?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeResourcePackageProductResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeResourcePackageProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourcePackageProductResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeResourcePackageProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeResourceUsageDetailRequest : Tea.TeaModel {
    public var billOwnerId: Int64?

    public var endPeriod: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var periodType: String?

    public var resourceType: String?

    public var startPeriod: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwnerId != nil {
            map["BillOwnerId"] = self.billOwnerId!
        }
        if self.endPeriod != nil {
            map["EndPeriod"] = self.endPeriod!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.periodType != nil {
            map["PeriodType"] = self.periodType!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.startPeriod != nil {
            map["StartPeriod"] = self.startPeriod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwnerId") {
            self.billOwnerId = dict["BillOwnerId"] as! Int64
        }
        if dict.keys.contains("EndPeriod") {
            self.endPeriod = dict["EndPeriod"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PeriodType") {
            self.periodType = dict["PeriodType"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StartPeriod") {
            self.startPeriod = dict["StartPeriod"] as! String
        }
    }
}

public class DescribeResourceUsageDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var capacityUnit: String?

            public var currency: String?

            public var deductQuantity: Double?

            public var endTime: String?

            public var imageType: String?

            public var instanceSpec: String?

            public var postpaidCost: String?

            public var potentialSavedCost: String?

            public var quantity: Int64?

            public var region: String?

            public var regionNo: String?

            public var reservationCost: String?

            public var resourceInstanceId: String?

            public var savedCost: String?

            public var startTime: String?

            public var status: String?

            public var statusName: String?

            public var totalQuantity: Double?

            public var usagePercentage: Double?

            public var userId: String?

            public var userName: String?

            public var zone: String?

            public var zoneName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capacityUnit != nil {
                    map["CapacityUnit"] = self.capacityUnit!
                }
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.deductQuantity != nil {
                    map["DeductQuantity"] = self.deductQuantity!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.imageType != nil {
                    map["ImageType"] = self.imageType!
                }
                if self.instanceSpec != nil {
                    map["InstanceSpec"] = self.instanceSpec!
                }
                if self.postpaidCost != nil {
                    map["PostpaidCost"] = self.postpaidCost!
                }
                if self.potentialSavedCost != nil {
                    map["PotentialSavedCost"] = self.potentialSavedCost!
                }
                if self.quantity != nil {
                    map["Quantity"] = self.quantity!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.regionNo != nil {
                    map["RegionNo"] = self.regionNo!
                }
                if self.reservationCost != nil {
                    map["ReservationCost"] = self.reservationCost!
                }
                if self.resourceInstanceId != nil {
                    map["ResourceInstanceId"] = self.resourceInstanceId!
                }
                if self.savedCost != nil {
                    map["SavedCost"] = self.savedCost!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusName != nil {
                    map["StatusName"] = self.statusName!
                }
                if self.totalQuantity != nil {
                    map["TotalQuantity"] = self.totalQuantity!
                }
                if self.usagePercentage != nil {
                    map["UsagePercentage"] = self.usagePercentage!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                if self.zone != nil {
                    map["Zone"] = self.zone!
                }
                if self.zoneName != nil {
                    map["ZoneName"] = self.zoneName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CapacityUnit") {
                    self.capacityUnit = dict["CapacityUnit"] as! String
                }
                if dict.keys.contains("Currency") {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DeductQuantity") {
                    self.deductQuantity = dict["DeductQuantity"] as! Double
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("ImageType") {
                    self.imageType = dict["ImageType"] as! String
                }
                if dict.keys.contains("InstanceSpec") {
                    self.instanceSpec = dict["InstanceSpec"] as! String
                }
                if dict.keys.contains("PostpaidCost") {
                    self.postpaidCost = dict["PostpaidCost"] as! String
                }
                if dict.keys.contains("PotentialSavedCost") {
                    self.potentialSavedCost = dict["PotentialSavedCost"] as! String
                }
                if dict.keys.contains("Quantity") {
                    self.quantity = dict["Quantity"] as! Int64
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("RegionNo") {
                    self.regionNo = dict["RegionNo"] as! String
                }
                if dict.keys.contains("ReservationCost") {
                    self.reservationCost = dict["ReservationCost"] as! String
                }
                if dict.keys.contains("ResourceInstanceId") {
                    self.resourceInstanceId = dict["ResourceInstanceId"] as! String
                }
                if dict.keys.contains("SavedCost") {
                    self.savedCost = dict["SavedCost"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StatusName") {
                    self.statusName = dict["StatusName"] as! String
                }
                if dict.keys.contains("TotalQuantity") {
                    self.totalQuantity = dict["TotalQuantity"] as! Double
                }
                if dict.keys.contains("UsagePercentage") {
                    self.usagePercentage = dict["UsagePercentage"] as! Double
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
                if dict.keys.contains("Zone") {
                    self.zone = dict["Zone"] as! String
                }
                if dict.keys.contains("ZoneName") {
                    self.zoneName = dict["ZoneName"] as! String
                }
            }
        }
        public var items: [DescribeResourceUsageDetailResponseBody.Data.Items]?

        public var maxResults: Int32?

        public var nextToken: String?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [DescribeResourceUsageDetailResponseBody.Data.Items]
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: DescribeResourceUsageDetailResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeResourceUsageDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeResourceUsageDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceUsageDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeResourceUsageDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeResourceUsageTotalRequest : Tea.TeaModel {
    public var billOwnerId: Int64?

    public var endPeriod: String?

    public var periodType: String?

    public var resourceType: String?

    public var startPeriod: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwnerId != nil {
            map["BillOwnerId"] = self.billOwnerId!
        }
        if self.endPeriod != nil {
            map["EndPeriod"] = self.endPeriod!
        }
        if self.periodType != nil {
            map["PeriodType"] = self.periodType!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.startPeriod != nil {
            map["StartPeriod"] = self.startPeriod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwnerId") {
            self.billOwnerId = dict["BillOwnerId"] as! Int64
        }
        if dict.keys.contains("EndPeriod") {
            self.endPeriod = dict["EndPeriod"] as! String
        }
        if dict.keys.contains("PeriodType") {
            self.periodType = dict["PeriodType"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StartPeriod") {
            self.startPeriod = dict["StartPeriod"] as! String
        }
    }
}

public class DescribeResourceUsageTotalResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PeriodCoverage : Tea.TeaModel {
            public var period: String?

            public var usagePercentage: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.period != nil {
                    map["Period"] = self.period!
                }
                if self.usagePercentage != nil {
                    map["UsagePercentage"] = self.usagePercentage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Period") {
                    self.period = dict["Period"] as! String
                }
                if dict.keys.contains("UsagePercentage") {
                    self.usagePercentage = dict["UsagePercentage"] as! Double
                }
            }
        }
        public class TotalUsage : Tea.TeaModel {
            public var postpaidCost: Double?

            public var potentialSavedCost: Double?

            public var reservationCost: Double?

            public var savedCost: Double?

            public var usagePercentage: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.postpaidCost != nil {
                    map["PostpaidCost"] = self.postpaidCost!
                }
                if self.potentialSavedCost != nil {
                    map["PotentialSavedCost"] = self.potentialSavedCost!
                }
                if self.reservationCost != nil {
                    map["ReservationCost"] = self.reservationCost!
                }
                if self.savedCost != nil {
                    map["SavedCost"] = self.savedCost!
                }
                if self.usagePercentage != nil {
                    map["UsagePercentage"] = self.usagePercentage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PostpaidCost") {
                    self.postpaidCost = dict["PostpaidCost"] as! Double
                }
                if dict.keys.contains("PotentialSavedCost") {
                    self.potentialSavedCost = dict["PotentialSavedCost"] as! Double
                }
                if dict.keys.contains("ReservationCost") {
                    self.reservationCost = dict["ReservationCost"] as! Double
                }
                if dict.keys.contains("SavedCost") {
                    self.savedCost = dict["SavedCost"] as! Double
                }
                if dict.keys.contains("UsagePercentage") {
                    self.usagePercentage = dict["UsagePercentage"] as! Double
                }
            }
        }
        public var periodCoverage: [DescribeResourceUsageTotalResponseBody.Data.PeriodCoverage]?

        public var totalUsage: DescribeResourceUsageTotalResponseBody.Data.TotalUsage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.totalUsage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.periodCoverage != nil {
                var tmp : [Any] = []
                for k in self.periodCoverage! {
                    tmp.append(k.toMap())
                }
                map["PeriodCoverage"] = tmp
            }
            if self.totalUsage != nil {
                map["TotalUsage"] = self.totalUsage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PeriodCoverage") {
                self.periodCoverage = dict["PeriodCoverage"] as! [DescribeResourceUsageTotalResponseBody.Data.PeriodCoverage]
            }
            if dict.keys.contains("TotalUsage") {
                var model = DescribeResourceUsageTotalResponseBody.Data.TotalUsage()
                model.fromMap(dict["TotalUsage"] as! [String: Any])
                self.totalUsage = model
            }
        }
    }
    public var code: String?

    public var data: DescribeResourceUsageTotalResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeResourceUsageTotalResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeResourceUsageTotalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceUsageTotalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeResourceUsageTotalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSavingsPlansCoverageDetailRequest : Tea.TeaModel {
    public var billOwnerId: Int64?

    public var endPeriod: String?

    public var maxResults: Int32?

    public var periodType: String?

    public var startPeriod: String?

    public var token: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwnerId != nil {
            map["BillOwnerId"] = self.billOwnerId!
        }
        if self.endPeriod != nil {
            map["EndPeriod"] = self.endPeriod!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.periodType != nil {
            map["PeriodType"] = self.periodType!
        }
        if self.startPeriod != nil {
            map["StartPeriod"] = self.startPeriod!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwnerId") {
            self.billOwnerId = dict["BillOwnerId"] as! Int64
        }
        if dict.keys.contains("EndPeriod") {
            self.endPeriod = dict["EndPeriod"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("PeriodType") {
            self.periodType = dict["PeriodType"] as! String
        }
        if dict.keys.contains("StartPeriod") {
            self.startPeriod = dict["StartPeriod"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class DescribeSavingsPlansCoverageDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var coveragePercentage: Double?

            public var currency: String?

            public var deductAmount: Double?

            public var endPeriod: String?

            public var instanceId: String?

            public var instanceSpec: String?

            public var postpaidCost: Double?

            public var region: String?

            public var startPeriod: String?

            public var totalAmount: Double?

            public var userId: Int64?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.coveragePercentage != nil {
                    map["CoveragePercentage"] = self.coveragePercentage!
                }
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.deductAmount != nil {
                    map["DeductAmount"] = self.deductAmount!
                }
                if self.endPeriod != nil {
                    map["EndPeriod"] = self.endPeriod!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceSpec != nil {
                    map["InstanceSpec"] = self.instanceSpec!
                }
                if self.postpaidCost != nil {
                    map["PostpaidCost"] = self.postpaidCost!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.startPeriod != nil {
                    map["StartPeriod"] = self.startPeriod!
                }
                if self.totalAmount != nil {
                    map["TotalAmount"] = self.totalAmount!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CoveragePercentage") {
                    self.coveragePercentage = dict["CoveragePercentage"] as! Double
                }
                if dict.keys.contains("Currency") {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DeductAmount") {
                    self.deductAmount = dict["DeductAmount"] as! Double
                }
                if dict.keys.contains("EndPeriod") {
                    self.endPeriod = dict["EndPeriod"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceSpec") {
                    self.instanceSpec = dict["InstanceSpec"] as! String
                }
                if dict.keys.contains("PostpaidCost") {
                    self.postpaidCost = dict["PostpaidCost"] as! Double
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("StartPeriod") {
                    self.startPeriod = dict["StartPeriod"] as! String
                }
                if dict.keys.contains("TotalAmount") {
                    self.totalAmount = dict["TotalAmount"] as! Double
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! Int64
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var items: [DescribeSavingsPlansCoverageDetailResponseBody.Data.Items]?

        public var nextToken: String?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [DescribeSavingsPlansCoverageDetailResponseBody.Data.Items]
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: DescribeSavingsPlansCoverageDetailResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeSavingsPlansCoverageDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeSavingsPlansCoverageDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSavingsPlansCoverageDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSavingsPlansCoverageDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSavingsPlansCoverageTotalRequest : Tea.TeaModel {
    public var billOwnerId: Int64?

    public var endPeriod: String?

    public var periodType: String?

    public var startPeriod: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwnerId != nil {
            map["BillOwnerId"] = self.billOwnerId!
        }
        if self.endPeriod != nil {
            map["EndPeriod"] = self.endPeriod!
        }
        if self.periodType != nil {
            map["PeriodType"] = self.periodType!
        }
        if self.startPeriod != nil {
            map["StartPeriod"] = self.startPeriod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwnerId") {
            self.billOwnerId = dict["BillOwnerId"] as! Int64
        }
        if dict.keys.contains("EndPeriod") {
            self.endPeriod = dict["EndPeriod"] as! String
        }
        if dict.keys.contains("PeriodType") {
            self.periodType = dict["PeriodType"] as! String
        }
        if dict.keys.contains("StartPeriod") {
            self.startPeriod = dict["StartPeriod"] as! String
        }
    }
}

public class DescribeSavingsPlansCoverageTotalResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PeriodCoverage : Tea.TeaModel {
            public var percentage: Double?

            public var period: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.percentage != nil {
                    map["Percentage"] = self.percentage!
                }
                if self.period != nil {
                    map["Period"] = self.period!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Percentage") {
                    self.percentage = dict["Percentage"] as! Double
                }
                if dict.keys.contains("Period") {
                    self.period = dict["Period"] as! String
                }
            }
        }
        public class TotalCoverage : Tea.TeaModel {
            public var coveragePercentage: Double?

            public var deductAmount: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.coveragePercentage != nil {
                    map["CoveragePercentage"] = self.coveragePercentage!
                }
                if self.deductAmount != nil {
                    map["DeductAmount"] = self.deductAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CoveragePercentage") {
                    self.coveragePercentage = dict["CoveragePercentage"] as! Double
                }
                if dict.keys.contains("DeductAmount") {
                    self.deductAmount = dict["DeductAmount"] as! Double
                }
            }
        }
        public var periodCoverage: [DescribeSavingsPlansCoverageTotalResponseBody.Data.PeriodCoverage]?

        public var totalCoverage: DescribeSavingsPlansCoverageTotalResponseBody.Data.TotalCoverage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.totalCoverage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.periodCoverage != nil {
                var tmp : [Any] = []
                for k in self.periodCoverage! {
                    tmp.append(k.toMap())
                }
                map["PeriodCoverage"] = tmp
            }
            if self.totalCoverage != nil {
                map["TotalCoverage"] = self.totalCoverage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PeriodCoverage") {
                self.periodCoverage = dict["PeriodCoverage"] as! [DescribeSavingsPlansCoverageTotalResponseBody.Data.PeriodCoverage]
            }
            if dict.keys.contains("TotalCoverage") {
                var model = DescribeSavingsPlansCoverageTotalResponseBody.Data.TotalCoverage()
                model.fromMap(dict["TotalCoverage"] as! [String: Any])
                self.totalCoverage = model
            }
        }
    }
    public var code: String?

    public var data: DescribeSavingsPlansCoverageTotalResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeSavingsPlansCoverageTotalResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeSavingsPlansCoverageTotalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSavingsPlansCoverageTotalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSavingsPlansCoverageTotalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSavingsPlansUsageDetailRequest : Tea.TeaModel {
    public var billOwnerId: Int64?

    public var endPeriod: String?

    public var maxResults: Int32?

    public var periodType: String?

    public var startPeriod: String?

    public var token: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwnerId != nil {
            map["BillOwnerId"] = self.billOwnerId!
        }
        if self.endPeriod != nil {
            map["EndPeriod"] = self.endPeriod!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.periodType != nil {
            map["PeriodType"] = self.periodType!
        }
        if self.startPeriod != nil {
            map["StartPeriod"] = self.startPeriod!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwnerId") {
            self.billOwnerId = dict["BillOwnerId"] as! Int64
        }
        if dict.keys.contains("EndPeriod") {
            self.endPeriod = dict["EndPeriod"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("PeriodType") {
            self.periodType = dict["PeriodType"] as! String
        }
        if dict.keys.contains("StartPeriod") {
            self.startPeriod = dict["StartPeriod"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class DescribeSavingsPlansUsageDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var currency: String?

            public var deductValue: Double?

            public var endPeriod: String?

            public var instanceId: String?

            public var poolValue: Double?

            public var postpaidCost: Double?

            public var savedCost: Double?

            public var startPeriod: String?

            public var status: String?

            public var type: String?

            public var usagePercentage: Double?

            public var userId: Int64?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.deductValue != nil {
                    map["DeductValue"] = self.deductValue!
                }
                if self.endPeriod != nil {
                    map["EndPeriod"] = self.endPeriod!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.poolValue != nil {
                    map["PoolValue"] = self.poolValue!
                }
                if self.postpaidCost != nil {
                    map["PostpaidCost"] = self.postpaidCost!
                }
                if self.savedCost != nil {
                    map["SavedCost"] = self.savedCost!
                }
                if self.startPeriod != nil {
                    map["StartPeriod"] = self.startPeriod!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.usagePercentage != nil {
                    map["UsagePercentage"] = self.usagePercentage!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Currency") {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DeductValue") {
                    self.deductValue = dict["DeductValue"] as! Double
                }
                if dict.keys.contains("EndPeriod") {
                    self.endPeriod = dict["EndPeriod"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("PoolValue") {
                    self.poolValue = dict["PoolValue"] as! Double
                }
                if dict.keys.contains("PostpaidCost") {
                    self.postpaidCost = dict["PostpaidCost"] as! Double
                }
                if dict.keys.contains("SavedCost") {
                    self.savedCost = dict["SavedCost"] as! Double
                }
                if dict.keys.contains("StartPeriod") {
                    self.startPeriod = dict["StartPeriod"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("UsagePercentage") {
                    self.usagePercentage = dict["UsagePercentage"] as! Double
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! Int64
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var items: [DescribeSavingsPlansUsageDetailResponseBody.Data.Items]?

        public var nextToken: String?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [DescribeSavingsPlansUsageDetailResponseBody.Data.Items]
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: DescribeSavingsPlansUsageDetailResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeSavingsPlansUsageDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeSavingsPlansUsageDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSavingsPlansUsageDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSavingsPlansUsageDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSavingsPlansUsageTotalRequest : Tea.TeaModel {
    public var billOwnerId: Int64?

    public var endPeriod: String?

    public var periodType: String?

    public var startPeriod: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwnerId != nil {
            map["BillOwnerId"] = self.billOwnerId!
        }
        if self.endPeriod != nil {
            map["EndPeriod"] = self.endPeriod!
        }
        if self.periodType != nil {
            map["PeriodType"] = self.periodType!
        }
        if self.startPeriod != nil {
            map["StartPeriod"] = self.startPeriod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwnerId") {
            self.billOwnerId = dict["BillOwnerId"] as! Int64
        }
        if dict.keys.contains("EndPeriod") {
            self.endPeriod = dict["EndPeriod"] as! String
        }
        if dict.keys.contains("PeriodType") {
            self.periodType = dict["PeriodType"] as! String
        }
        if dict.keys.contains("StartPeriod") {
            self.startPeriod = dict["StartPeriod"] as! String
        }
    }
}

public class DescribeSavingsPlansUsageTotalResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PeriodCoverage : Tea.TeaModel {
            public var percentage: Double?

            public var period: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.percentage != nil {
                    map["Percentage"] = self.percentage!
                }
                if self.period != nil {
                    map["Period"] = self.period!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Percentage") {
                    self.percentage = dict["Percentage"] as! Double
                }
                if dict.keys.contains("Period") {
                    self.period = dict["Period"] as! String
                }
            }
        }
        public class TotalUsage : Tea.TeaModel {
            public var poolValue: Double?

            public var postpaidCost: Double?

            public var savedCost: Double?

            public var usagePercentage: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.poolValue != nil {
                    map["PoolValue"] = self.poolValue!
                }
                if self.postpaidCost != nil {
                    map["PostpaidCost"] = self.postpaidCost!
                }
                if self.savedCost != nil {
                    map["SavedCost"] = self.savedCost!
                }
                if self.usagePercentage != nil {
                    map["UsagePercentage"] = self.usagePercentage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PoolValue") {
                    self.poolValue = dict["PoolValue"] as! Double
                }
                if dict.keys.contains("PostpaidCost") {
                    self.postpaidCost = dict["PostpaidCost"] as! Double
                }
                if dict.keys.contains("SavedCost") {
                    self.savedCost = dict["SavedCost"] as! Double
                }
                if dict.keys.contains("UsagePercentage") {
                    self.usagePercentage = dict["UsagePercentage"] as! Double
                }
            }
        }
        public var periodCoverage: [DescribeSavingsPlansUsageTotalResponseBody.Data.PeriodCoverage]?

        public var totalUsage: DescribeSavingsPlansUsageTotalResponseBody.Data.TotalUsage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.totalUsage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.periodCoverage != nil {
                var tmp : [Any] = []
                for k in self.periodCoverage! {
                    tmp.append(k.toMap())
                }
                map["PeriodCoverage"] = tmp
            }
            if self.totalUsage != nil {
                map["TotalUsage"] = self.totalUsage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PeriodCoverage") {
                self.periodCoverage = dict["PeriodCoverage"] as! [DescribeSavingsPlansUsageTotalResponseBody.Data.PeriodCoverage]
            }
            if dict.keys.contains("TotalUsage") {
                var model = DescribeSavingsPlansUsageTotalResponseBody.Data.TotalUsage()
                model.fromMap(dict["TotalUsage"] as! [String: Any])
                self.totalUsage = model
            }
        }
    }
    public var code: String?

    public var data: DescribeSavingsPlansUsageTotalResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeSavingsPlansUsageTotalResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeSavingsPlansUsageTotalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSavingsPlansUsageTotalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSavingsPlansUsageTotalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSplitItemBillRequest : Tea.TeaModel {
    public class TagFilter : Tea.TeaModel {
        public var tagKey: String?

        public var tagValues: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValues != nil {
                map["TagValues"] = self.tagValues!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagKey") {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValues") {
                self.tagValues = dict["TagValues"] as! [String]
            }
        }
    }
    public var billOwnerId: Int64?

    public var billingCycle: String?

    public var billingDate: String?

    public var granularity: String?

    public var instanceID: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerId: Int64?

    public var productCode: String?

    public var productType: String?

    public var splitItemID: String?

    public var subscriptionType: String?

    public var tagFilter: [DescribeSplitItemBillRequest.TagFilter]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwnerId != nil {
            map["BillOwnerId"] = self.billOwnerId!
        }
        if self.billingCycle != nil {
            map["BillingCycle"] = self.billingCycle!
        }
        if self.billingDate != nil {
            map["BillingDate"] = self.billingDate!
        }
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.instanceID != nil {
            map["InstanceID"] = self.instanceID!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.splitItemID != nil {
            map["SplitItemID"] = self.splitItemID!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        if self.tagFilter != nil {
            var tmp : [Any] = []
            for k in self.tagFilter! {
                tmp.append(k.toMap())
            }
            map["TagFilter"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwnerId") {
            self.billOwnerId = dict["BillOwnerId"] as! Int64
        }
        if dict.keys.contains("BillingCycle") {
            self.billingCycle = dict["BillingCycle"] as! String
        }
        if dict.keys.contains("BillingDate") {
            self.billingDate = dict["BillingDate"] as! String
        }
        if dict.keys.contains("Granularity") {
            self.granularity = dict["Granularity"] as! String
        }
        if dict.keys.contains("InstanceID") {
            self.instanceID = dict["InstanceID"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SplitItemID") {
            self.splitItemID = dict["SplitItemID"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
        if dict.keys.contains("TagFilter") {
            self.tagFilter = dict["TagFilter"] as! [DescribeSplitItemBillRequest.TagFilter]
        }
    }
}

public class DescribeSplitItemBillResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var adjustAmount: Double?

            public var billAccountID: String?

            public var billAccountName: String?

            public var billingDate: String?

            public var billingItem: String?

            public var billingItemCode: String?

            public var billingType: String?

            public var bizType: String?

            public var cashAmount: Double?

            public var commodityCode: String?

            public var costUnit: String?

            public var currency: String?

            public var deductedByCashCoupons: Double?

            public var deductedByCoupons: Double?

            public var deductedByPrepaidCard: Double?

            public var deductedByResourcePackage: String?

            public var instanceConfig: String?

            public var instanceID: String?

            public var instanceSpec: String?

            public var internetIP: String?

            public var intranetIP: String?

            public var invoiceDiscount: Double?

            public var item: String?

            public var itemName: String?

            public var listPrice: String?

            public var listPriceUnit: String?

            public var nickName: String?

            public var outstandingAmount: Double?

            public var ownerID: String?

            public var paymentAmount: Double?

            public var pipCode: String?

            public var pretaxAmount: Double?

            public var pretaxGrossAmount: Double?

            public var productCode: String?

            public var productDetail: String?

            public var productName: String?

            public var productType: String?

            public var region: String?

            public var resourceGroup: String?

            public var servicePeriod: String?

            public var servicePeriodUnit: String?

            public var splitAccountID: String?

            public var splitAccountName: String?

            public var splitBillingCycle: String?

            public var splitBillingDate: String?

            public var splitCommodityCode: String?

            public var splitItemID: String?

            public var splitItemName: String?

            public var splitProductDetail: String?

            public var subscriptionType: String?

            public var tag: String?

            public var usage: String?

            public var usageUnit: String?

            public var zone: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.adjustAmount != nil {
                    map["AdjustAmount"] = self.adjustAmount!
                }
                if self.billAccountID != nil {
                    map["BillAccountID"] = self.billAccountID!
                }
                if self.billAccountName != nil {
                    map["BillAccountName"] = self.billAccountName!
                }
                if self.billingDate != nil {
                    map["BillingDate"] = self.billingDate!
                }
                if self.billingItem != nil {
                    map["BillingItem"] = self.billingItem!
                }
                if self.billingItemCode != nil {
                    map["BillingItemCode"] = self.billingItemCode!
                }
                if self.billingType != nil {
                    map["BillingType"] = self.billingType!
                }
                if self.bizType != nil {
                    map["BizType"] = self.bizType!
                }
                if self.cashAmount != nil {
                    map["CashAmount"] = self.cashAmount!
                }
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.costUnit != nil {
                    map["CostUnit"] = self.costUnit!
                }
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.deductedByCashCoupons != nil {
                    map["DeductedByCashCoupons"] = self.deductedByCashCoupons!
                }
                if self.deductedByCoupons != nil {
                    map["DeductedByCoupons"] = self.deductedByCoupons!
                }
                if self.deductedByPrepaidCard != nil {
                    map["DeductedByPrepaidCard"] = self.deductedByPrepaidCard!
                }
                if self.deductedByResourcePackage != nil {
                    map["DeductedByResourcePackage"] = self.deductedByResourcePackage!
                }
                if self.instanceConfig != nil {
                    map["InstanceConfig"] = self.instanceConfig!
                }
                if self.instanceID != nil {
                    map["InstanceID"] = self.instanceID!
                }
                if self.instanceSpec != nil {
                    map["InstanceSpec"] = self.instanceSpec!
                }
                if self.internetIP != nil {
                    map["InternetIP"] = self.internetIP!
                }
                if self.intranetIP != nil {
                    map["IntranetIP"] = self.intranetIP!
                }
                if self.invoiceDiscount != nil {
                    map["InvoiceDiscount"] = self.invoiceDiscount!
                }
                if self.item != nil {
                    map["Item"] = self.item!
                }
                if self.itemName != nil {
                    map["ItemName"] = self.itemName!
                }
                if self.listPrice != nil {
                    map["ListPrice"] = self.listPrice!
                }
                if self.listPriceUnit != nil {
                    map["ListPriceUnit"] = self.listPriceUnit!
                }
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                if self.outstandingAmount != nil {
                    map["OutstandingAmount"] = self.outstandingAmount!
                }
                if self.ownerID != nil {
                    map["OwnerID"] = self.ownerID!
                }
                if self.paymentAmount != nil {
                    map["PaymentAmount"] = self.paymentAmount!
                }
                if self.pipCode != nil {
                    map["PipCode"] = self.pipCode!
                }
                if self.pretaxAmount != nil {
                    map["PretaxAmount"] = self.pretaxAmount!
                }
                if self.pretaxGrossAmount != nil {
                    map["PretaxGrossAmount"] = self.pretaxGrossAmount!
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                if self.productDetail != nil {
                    map["ProductDetail"] = self.productDetail!
                }
                if self.productName != nil {
                    map["ProductName"] = self.productName!
                }
                if self.productType != nil {
                    map["ProductType"] = self.productType!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.resourceGroup != nil {
                    map["ResourceGroup"] = self.resourceGroup!
                }
                if self.servicePeriod != nil {
                    map["ServicePeriod"] = self.servicePeriod!
                }
                if self.servicePeriodUnit != nil {
                    map["ServicePeriodUnit"] = self.servicePeriodUnit!
                }
                if self.splitAccountID != nil {
                    map["SplitAccountID"] = self.splitAccountID!
                }
                if self.splitAccountName != nil {
                    map["SplitAccountName"] = self.splitAccountName!
                }
                if self.splitBillingCycle != nil {
                    map["SplitBillingCycle"] = self.splitBillingCycle!
                }
                if self.splitBillingDate != nil {
                    map["SplitBillingDate"] = self.splitBillingDate!
                }
                if self.splitCommodityCode != nil {
                    map["SplitCommodityCode"] = self.splitCommodityCode!
                }
                if self.splitItemID != nil {
                    map["SplitItemID"] = self.splitItemID!
                }
                if self.splitItemName != nil {
                    map["SplitItemName"] = self.splitItemName!
                }
                if self.splitProductDetail != nil {
                    map["SplitProductDetail"] = self.splitProductDetail!
                }
                if self.subscriptionType != nil {
                    map["SubscriptionType"] = self.subscriptionType!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                if self.usage != nil {
                    map["Usage"] = self.usage!
                }
                if self.usageUnit != nil {
                    map["UsageUnit"] = self.usageUnit!
                }
                if self.zone != nil {
                    map["Zone"] = self.zone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AdjustAmount") {
                    self.adjustAmount = dict["AdjustAmount"] as! Double
                }
                if dict.keys.contains("BillAccountID") {
                    self.billAccountID = dict["BillAccountID"] as! String
                }
                if dict.keys.contains("BillAccountName") {
                    self.billAccountName = dict["BillAccountName"] as! String
                }
                if dict.keys.contains("BillingDate") {
                    self.billingDate = dict["BillingDate"] as! String
                }
                if dict.keys.contains("BillingItem") {
                    self.billingItem = dict["BillingItem"] as! String
                }
                if dict.keys.contains("BillingItemCode") {
                    self.billingItemCode = dict["BillingItemCode"] as! String
                }
                if dict.keys.contains("BillingType") {
                    self.billingType = dict["BillingType"] as! String
                }
                if dict.keys.contains("BizType") {
                    self.bizType = dict["BizType"] as! String
                }
                if dict.keys.contains("CashAmount") {
                    self.cashAmount = dict["CashAmount"] as! Double
                }
                if dict.keys.contains("CommodityCode") {
                    self.commodityCode = dict["CommodityCode"] as! String
                }
                if dict.keys.contains("CostUnit") {
                    self.costUnit = dict["CostUnit"] as! String
                }
                if dict.keys.contains("Currency") {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DeductedByCashCoupons") {
                    self.deductedByCashCoupons = dict["DeductedByCashCoupons"] as! Double
                }
                if dict.keys.contains("DeductedByCoupons") {
                    self.deductedByCoupons = dict["DeductedByCoupons"] as! Double
                }
                if dict.keys.contains("DeductedByPrepaidCard") {
                    self.deductedByPrepaidCard = dict["DeductedByPrepaidCard"] as! Double
                }
                if dict.keys.contains("DeductedByResourcePackage") {
                    self.deductedByResourcePackage = dict["DeductedByResourcePackage"] as! String
                }
                if dict.keys.contains("InstanceConfig") {
                    self.instanceConfig = dict["InstanceConfig"] as! String
                }
                if dict.keys.contains("InstanceID") {
                    self.instanceID = dict["InstanceID"] as! String
                }
                if dict.keys.contains("InstanceSpec") {
                    self.instanceSpec = dict["InstanceSpec"] as! String
                }
                if dict.keys.contains("InternetIP") {
                    self.internetIP = dict["InternetIP"] as! String
                }
                if dict.keys.contains("IntranetIP") {
                    self.intranetIP = dict["IntranetIP"] as! String
                }
                if dict.keys.contains("InvoiceDiscount") {
                    self.invoiceDiscount = dict["InvoiceDiscount"] as! Double
                }
                if dict.keys.contains("Item") {
                    self.item = dict["Item"] as! String
                }
                if dict.keys.contains("ItemName") {
                    self.itemName = dict["ItemName"] as! String
                }
                if dict.keys.contains("ListPrice") {
                    self.listPrice = dict["ListPrice"] as! String
                }
                if dict.keys.contains("ListPriceUnit") {
                    self.listPriceUnit = dict["ListPriceUnit"] as! String
                }
                if dict.keys.contains("NickName") {
                    self.nickName = dict["NickName"] as! String
                }
                if dict.keys.contains("OutstandingAmount") {
                    self.outstandingAmount = dict["OutstandingAmount"] as! Double
                }
                if dict.keys.contains("OwnerID") {
                    self.ownerID = dict["OwnerID"] as! String
                }
                if dict.keys.contains("PaymentAmount") {
                    self.paymentAmount = dict["PaymentAmount"] as! Double
                }
                if dict.keys.contains("PipCode") {
                    self.pipCode = dict["PipCode"] as! String
                }
                if dict.keys.contains("PretaxAmount") {
                    self.pretaxAmount = dict["PretaxAmount"] as! Double
                }
                if dict.keys.contains("PretaxGrossAmount") {
                    self.pretaxGrossAmount = dict["PretaxGrossAmount"] as! Double
                }
                if dict.keys.contains("ProductCode") {
                    self.productCode = dict["ProductCode"] as! String
                }
                if dict.keys.contains("ProductDetail") {
                    self.productDetail = dict["ProductDetail"] as! String
                }
                if dict.keys.contains("ProductName") {
                    self.productName = dict["ProductName"] as! String
                }
                if dict.keys.contains("ProductType") {
                    self.productType = dict["ProductType"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ResourceGroup") {
                    self.resourceGroup = dict["ResourceGroup"] as! String
                }
                if dict.keys.contains("ServicePeriod") {
                    self.servicePeriod = dict["ServicePeriod"] as! String
                }
                if dict.keys.contains("ServicePeriodUnit") {
                    self.servicePeriodUnit = dict["ServicePeriodUnit"] as! String
                }
                if dict.keys.contains("SplitAccountID") {
                    self.splitAccountID = dict["SplitAccountID"] as! String
                }
                if dict.keys.contains("SplitAccountName") {
                    self.splitAccountName = dict["SplitAccountName"] as! String
                }
                if dict.keys.contains("SplitBillingCycle") {
                    self.splitBillingCycle = dict["SplitBillingCycle"] as! String
                }
                if dict.keys.contains("SplitBillingDate") {
                    self.splitBillingDate = dict["SplitBillingDate"] as! String
                }
                if dict.keys.contains("SplitCommodityCode") {
                    self.splitCommodityCode = dict["SplitCommodityCode"] as! String
                }
                if dict.keys.contains("SplitItemID") {
                    self.splitItemID = dict["SplitItemID"] as! String
                }
                if dict.keys.contains("SplitItemName") {
                    self.splitItemName = dict["SplitItemName"] as! String
                }
                if dict.keys.contains("SplitProductDetail") {
                    self.splitProductDetail = dict["SplitProductDetail"] as! String
                }
                if dict.keys.contains("SubscriptionType") {
                    self.subscriptionType = dict["SubscriptionType"] as! String
                }
                if dict.keys.contains("Tag") {
                    self.tag = dict["Tag"] as! String
                }
                if dict.keys.contains("Usage") {
                    self.usage = dict["Usage"] as! String
                }
                if dict.keys.contains("UsageUnit") {
                    self.usageUnit = dict["UsageUnit"] as! String
                }
                if dict.keys.contains("Zone") {
                    self.zone = dict["Zone"] as! String
                }
            }
        }
        public var accountID: String?

        public var accountName: String?

        public var billingCycle: String?

        public var items: [DescribeSplitItemBillResponseBody.Data.Items]?

        public var maxResults: Int32?

        public var nextToken: String?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountID != nil {
                map["AccountID"] = self.accountID!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.billingCycle != nil {
                map["BillingCycle"] = self.billingCycle!
            }
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountID") {
                self.accountID = dict["AccountID"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("BillingCycle") {
                self.billingCycle = dict["BillingCycle"] as! String
            }
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [DescribeSplitItemBillResponseBody.Data.Items]
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: DescribeSplitItemBillResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeSplitItemBillResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeSplitItemBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSplitItemBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSplitItemBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableBillGenerationRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var productCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
    }
}

public class EnableBillGenerationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var boolean: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.boolean != nil {
                map["Boolean"] = self.boolean!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Boolean") {
                self.boolean = dict["Boolean"] as! Bool
            }
        }
    }
    public var code: String?

    public var data: EnableBillGenerationResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = EnableBillGenerationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class EnableBillGenerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableBillGenerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnableBillGenerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccountRelationRequest : Tea.TeaModel {
    public var relationId: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.relationId != nil {
            map["RelationId"] = self.relationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RelationId") {
            self.relationId = dict["RelationId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAccountRelationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var childUserId: Int64?

        public var endTime: Int64?

        public var gmtModified: Int64?

        public var id: Int64?

        public var parentUserId: Int64?

        public var startTime: Int64?

        public var status: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.childUserId != nil {
                map["ChildUserId"] = self.childUserId!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.parentUserId != nil {
                map["ParentUserId"] = self.parentUserId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChildUserId") {
                self.childUserId = dict["ChildUserId"] as! Int64
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("ParentUserId") {
                self.parentUserId = dict["ParentUserId"] as! Int64
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetAccountRelationResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetAccountRelationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetAccountRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountRelationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAccountRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCustomerAccountInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class GetCustomerAccountInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountType: String?

        public var creditLimitStatus: String?

        public var hostingStatus: String?

        public var isCertified: Bool?

        public var loginEmail: String?

        public var mpk: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountType != nil {
                map["AccountType"] = self.accountType!
            }
            if self.creditLimitStatus != nil {
                map["CreditLimitStatus"] = self.creditLimitStatus!
            }
            if self.hostingStatus != nil {
                map["HostingStatus"] = self.hostingStatus!
            }
            if self.isCertified != nil {
                map["IsCertified"] = self.isCertified!
            }
            if self.loginEmail != nil {
                map["LoginEmail"] = self.loginEmail!
            }
            if self.mpk != nil {
                map["Mpk"] = self.mpk!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountType") {
                self.accountType = dict["AccountType"] as! String
            }
            if dict.keys.contains("CreditLimitStatus") {
                self.creditLimitStatus = dict["CreditLimitStatus"] as! String
            }
            if dict.keys.contains("HostingStatus") {
                self.hostingStatus = dict["HostingStatus"] as! String
            }
            if dict.keys.contains("IsCertified") {
                self.isCertified = dict["IsCertified"] as! Bool
            }
            if dict.keys.contains("LoginEmail") {
                self.loginEmail = dict["LoginEmail"] as! String
            }
            if dict.keys.contains("Mpk") {
                self.mpk = dict["Mpk"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: GetCustomerAccountInfoResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetCustomerAccountInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetCustomerAccountInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomerAccountInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCustomerAccountInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCustomerListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var uidList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.uidList != nil {
                map["UidList"] = self.uidList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UidList") {
                self.uidList = dict["UidList"] as! [String]
            }
        }
    }
    public var code: String?

    public var data: GetCustomerListResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetCustomerListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetCustomerListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomerListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCustomerListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOrderDetailRequest : Tea.TeaModel {
    public var orderId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class GetOrderDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class OrderList : Tea.TeaModel {
            public class Order : Tea.TeaModel {
                public var afterTaxAmount: String?

                public var commodityCode: String?

                public var config: String?

                public var createTime: String?

                public var currency: String?

                public var instanceIDs: String?

                public var operator_: String?

                public var orderId: String?

                public var orderSubType: String?

                public var orderType: String?

                public var originalConfig: String?

                public var paymentCurrency: String?

                public var paymentStatus: String?

                public var paymentTime: String?

                public var pretaxAmount: String?

                public var pretaxAmountLocal: String?

                public var pretaxGrossAmount: String?

                public var productCode: String?

                public var productType: String?

                public var quantity: String?

                public var region: String?

                public var relatedOrderId: String?

                public var subOrderId: String?

                public var subscriptionType: String?

                public var tax: String?

                public var usageEndTime: String?

                public var usageStartTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.afterTaxAmount != nil {
                        map["AfterTaxAmount"] = self.afterTaxAmount!
                    }
                    if self.commodityCode != nil {
                        map["CommodityCode"] = self.commodityCode!
                    }
                    if self.config != nil {
                        map["Config"] = self.config!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.currency != nil {
                        map["Currency"] = self.currency!
                    }
                    if self.instanceIDs != nil {
                        map["InstanceIDs"] = self.instanceIDs!
                    }
                    if self.operator_ != nil {
                        map["Operator"] = self.operator_!
                    }
                    if self.orderId != nil {
                        map["OrderId"] = self.orderId!
                    }
                    if self.orderSubType != nil {
                        map["OrderSubType"] = self.orderSubType!
                    }
                    if self.orderType != nil {
                        map["OrderType"] = self.orderType!
                    }
                    if self.originalConfig != nil {
                        map["OriginalConfig"] = self.originalConfig!
                    }
                    if self.paymentCurrency != nil {
                        map["PaymentCurrency"] = self.paymentCurrency!
                    }
                    if self.paymentStatus != nil {
                        map["PaymentStatus"] = self.paymentStatus!
                    }
                    if self.paymentTime != nil {
                        map["PaymentTime"] = self.paymentTime!
                    }
                    if self.pretaxAmount != nil {
                        map["PretaxAmount"] = self.pretaxAmount!
                    }
                    if self.pretaxAmountLocal != nil {
                        map["PretaxAmountLocal"] = self.pretaxAmountLocal!
                    }
                    if self.pretaxGrossAmount != nil {
                        map["PretaxGrossAmount"] = self.pretaxGrossAmount!
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    if self.productType != nil {
                        map["ProductType"] = self.productType!
                    }
                    if self.quantity != nil {
                        map["Quantity"] = self.quantity!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.relatedOrderId != nil {
                        map["RelatedOrderId"] = self.relatedOrderId!
                    }
                    if self.subOrderId != nil {
                        map["SubOrderId"] = self.subOrderId!
                    }
                    if self.subscriptionType != nil {
                        map["SubscriptionType"] = self.subscriptionType!
                    }
                    if self.tax != nil {
                        map["Tax"] = self.tax!
                    }
                    if self.usageEndTime != nil {
                        map["UsageEndTime"] = self.usageEndTime!
                    }
                    if self.usageStartTime != nil {
                        map["UsageStartTime"] = self.usageStartTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AfterTaxAmount") {
                        self.afterTaxAmount = dict["AfterTaxAmount"] as! String
                    }
                    if dict.keys.contains("CommodityCode") {
                        self.commodityCode = dict["CommodityCode"] as! String
                    }
                    if dict.keys.contains("Config") {
                        self.config = dict["Config"] as! String
                    }
                    if dict.keys.contains("CreateTime") {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Currency") {
                        self.currency = dict["Currency"] as! String
                    }
                    if dict.keys.contains("InstanceIDs") {
                        self.instanceIDs = dict["InstanceIDs"] as! String
                    }
                    if dict.keys.contains("Operator") {
                        self.operator_ = dict["Operator"] as! String
                    }
                    if dict.keys.contains("OrderId") {
                        self.orderId = dict["OrderId"] as! String
                    }
                    if dict.keys.contains("OrderSubType") {
                        self.orderSubType = dict["OrderSubType"] as! String
                    }
                    if dict.keys.contains("OrderType") {
                        self.orderType = dict["OrderType"] as! String
                    }
                    if dict.keys.contains("OriginalConfig") {
                        self.originalConfig = dict["OriginalConfig"] as! String
                    }
                    if dict.keys.contains("PaymentCurrency") {
                        self.paymentCurrency = dict["PaymentCurrency"] as! String
                    }
                    if dict.keys.contains("PaymentStatus") {
                        self.paymentStatus = dict["PaymentStatus"] as! String
                    }
                    if dict.keys.contains("PaymentTime") {
                        self.paymentTime = dict["PaymentTime"] as! String
                    }
                    if dict.keys.contains("PretaxAmount") {
                        self.pretaxAmount = dict["PretaxAmount"] as! String
                    }
                    if dict.keys.contains("PretaxAmountLocal") {
                        self.pretaxAmountLocal = dict["PretaxAmountLocal"] as! String
                    }
                    if dict.keys.contains("PretaxGrossAmount") {
                        self.pretaxGrossAmount = dict["PretaxGrossAmount"] as! String
                    }
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! String
                    }
                    if dict.keys.contains("ProductType") {
                        self.productType = dict["ProductType"] as! String
                    }
                    if dict.keys.contains("Quantity") {
                        self.quantity = dict["Quantity"] as! String
                    }
                    if dict.keys.contains("Region") {
                        self.region = dict["Region"] as! String
                    }
                    if dict.keys.contains("RelatedOrderId") {
                        self.relatedOrderId = dict["RelatedOrderId"] as! String
                    }
                    if dict.keys.contains("SubOrderId") {
                        self.subOrderId = dict["SubOrderId"] as! String
                    }
                    if dict.keys.contains("SubscriptionType") {
                        self.subscriptionType = dict["SubscriptionType"] as! String
                    }
                    if dict.keys.contains("Tax") {
                        self.tax = dict["Tax"] as! String
                    }
                    if dict.keys.contains("UsageEndTime") {
                        self.usageEndTime = dict["UsageEndTime"] as! String
                    }
                    if dict.keys.contains("UsageStartTime") {
                        self.usageStartTime = dict["UsageStartTime"] as! String
                    }
                }
            }
            public var order: [GetOrderDetailResponseBody.Data.OrderList.Order]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.order != nil {
                    var tmp : [Any] = []
                    for k in self.order! {
                        tmp.append(k.toMap())
                    }
                    map["Order"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Order") {
                    self.order = dict["Order"] as! [GetOrderDetailResponseBody.Data.OrderList.Order]
                }
            }
        }
        public var hostName: String?

        public var orderList: GetOrderDetailResponseBody.Data.OrderList?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.orderList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.orderList != nil {
                map["OrderList"] = self.orderList?.toMap()
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostName") {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("OrderList") {
                var model = GetOrderDetailResponseBody.Data.OrderList()
                model.fromMap(dict["OrderList"] as! [String: Any])
                self.orderList = model
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: GetOrderDetailResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetOrderDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetOrderDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOrderDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOrderDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPayAsYouGoPriceRequest : Tea.TeaModel {
    public class ModuleList : Tea.TeaModel {
        public var config: String?

        public var moduleCode: String?

        public var priceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.moduleCode != nil {
                map["ModuleCode"] = self.moduleCode!
            }
            if self.priceType != nil {
                map["PriceType"] = self.priceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("ModuleCode") {
                self.moduleCode = dict["ModuleCode"] as! String
            }
            if dict.keys.contains("PriceType") {
                self.priceType = dict["PriceType"] as! String
            }
        }
    }
    public var moduleList: [GetPayAsYouGoPriceRequest.ModuleList]?

    public var ownerId: Int64?

    public var productCode: String?

    public var productType: String?

    public var region: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.moduleList != nil {
            var tmp : [Any] = []
            for k in self.moduleList! {
                tmp.append(k.toMap())
            }
            map["ModuleList"] = tmp
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModuleList") {
            self.moduleList = dict["ModuleList"] as! [GetPayAsYouGoPriceRequest.ModuleList]
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class GetPayAsYouGoPriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ModuleDetails : Tea.TeaModel {
            public class ModuleDetail : Tea.TeaModel {
                public var costAfterDiscount: Double?

                public var invoiceDiscount: Double?

                public var moduleCode: String?

                public var originalCost: Double?

                public var unitPrice: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.costAfterDiscount != nil {
                        map["CostAfterDiscount"] = self.costAfterDiscount!
                    }
                    if self.invoiceDiscount != nil {
                        map["InvoiceDiscount"] = self.invoiceDiscount!
                    }
                    if self.moduleCode != nil {
                        map["ModuleCode"] = self.moduleCode!
                    }
                    if self.originalCost != nil {
                        map["OriginalCost"] = self.originalCost!
                    }
                    if self.unitPrice != nil {
                        map["UnitPrice"] = self.unitPrice!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CostAfterDiscount") {
                        self.costAfterDiscount = dict["CostAfterDiscount"] as! Double
                    }
                    if dict.keys.contains("InvoiceDiscount") {
                        self.invoiceDiscount = dict["InvoiceDiscount"] as! Double
                    }
                    if dict.keys.contains("ModuleCode") {
                        self.moduleCode = dict["ModuleCode"] as! String
                    }
                    if dict.keys.contains("OriginalCost") {
                        self.originalCost = dict["OriginalCost"] as! Double
                    }
                    if dict.keys.contains("UnitPrice") {
                        self.unitPrice = dict["UnitPrice"] as! Double
                    }
                }
            }
            public var moduleDetail: [GetPayAsYouGoPriceResponseBody.Data.ModuleDetails.ModuleDetail]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.moduleDetail != nil {
                    var tmp : [Any] = []
                    for k in self.moduleDetail! {
                        tmp.append(k.toMap())
                    }
                    map["ModuleDetail"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ModuleDetail") {
                    self.moduleDetail = dict["ModuleDetail"] as! [GetPayAsYouGoPriceResponseBody.Data.ModuleDetails.ModuleDetail]
                }
            }
        }
        public class PromotionDetails : Tea.TeaModel {
            public class PromotionDetail : Tea.TeaModel {
                public var promotionDesc: String?

                public var promotionId: Int64?

                public var promotionName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.promotionDesc != nil {
                        map["PromotionDesc"] = self.promotionDesc!
                    }
                    if self.promotionId != nil {
                        map["PromotionId"] = self.promotionId!
                    }
                    if self.promotionName != nil {
                        map["PromotionName"] = self.promotionName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PromotionDesc") {
                        self.promotionDesc = dict["PromotionDesc"] as! String
                    }
                    if dict.keys.contains("PromotionId") {
                        self.promotionId = dict["PromotionId"] as! Int64
                    }
                    if dict.keys.contains("PromotionName") {
                        self.promotionName = dict["PromotionName"] as! String
                    }
                }
            }
            public var promotionDetail: [GetPayAsYouGoPriceResponseBody.Data.PromotionDetails.PromotionDetail]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.promotionDetail != nil {
                    var tmp : [Any] = []
                    for k in self.promotionDetail! {
                        tmp.append(k.toMap())
                    }
                    map["PromotionDetail"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PromotionDetail") {
                    self.promotionDetail = dict["PromotionDetail"] as! [GetPayAsYouGoPriceResponseBody.Data.PromotionDetails.PromotionDetail]
                }
            }
        }
        public var currency: String?

        public var moduleDetails: GetPayAsYouGoPriceResponseBody.Data.ModuleDetails?

        public var promotionDetails: GetPayAsYouGoPriceResponseBody.Data.PromotionDetails?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.moduleDetails?.validate()
            try self.promotionDetails?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.moduleDetails != nil {
                map["ModuleDetails"] = self.moduleDetails?.toMap()
            }
            if self.promotionDetails != nil {
                map["PromotionDetails"] = self.promotionDetails?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Currency") {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("ModuleDetails") {
                var model = GetPayAsYouGoPriceResponseBody.Data.ModuleDetails()
                model.fromMap(dict["ModuleDetails"] as! [String: Any])
                self.moduleDetails = model
            }
            if dict.keys.contains("PromotionDetails") {
                var model = GetPayAsYouGoPriceResponseBody.Data.PromotionDetails()
                model.fromMap(dict["PromotionDetails"] as! [String: Any])
                self.promotionDetails = model
            }
        }
    }
    public var code: String?

    public var data: GetPayAsYouGoPriceResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetPayAsYouGoPriceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetPayAsYouGoPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPayAsYouGoPriceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetPayAsYouGoPriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourcePackagePriceRequest : Tea.TeaModel {
    public var duration: Int32?

    public var effectiveDate: String?

    public var instanceId: String?

    public var orderType: String?

    public var ownerId: Int64?

    public var packageType: String?

    public var pricingCycle: String?

    public var productCode: String?

    public var specification: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.effectiveDate != nil {
            map["EffectiveDate"] = self.effectiveDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.packageType != nil {
            map["PackageType"] = self.packageType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.specification != nil {
            map["Specification"] = self.specification!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("EffectiveDate") {
            self.effectiveDate = dict["EffectiveDate"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PackageType") {
            self.packageType = dict["PackageType"] as! String
        }
        if dict.keys.contains("PricingCycle") {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Specification") {
            self.specification = dict["Specification"] as! String
        }
    }
}

public class GetResourcePackagePriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Promotions : Tea.TeaModel {
            public class Promotion : Tea.TeaModel {
                public var id: Int64?

                public var name: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public var promotion: [GetResourcePackagePriceResponseBody.Data.Promotions.Promotion]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.promotion != nil {
                    var tmp : [Any] = []
                    for k in self.promotion! {
                        tmp.append(k.toMap())
                    }
                    map["Promotion"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Promotion") {
                    self.promotion = dict["Promotion"] as! [GetResourcePackagePriceResponseBody.Data.Promotions.Promotion]
                }
            }
        }
        public var currency: String?

        public var discountPrice: Double?

        public var originalPrice: Double?

        public var promotions: GetResourcePackagePriceResponseBody.Data.Promotions?

        public var tradePrice: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.promotions?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.discountPrice != nil {
                map["DiscountPrice"] = self.discountPrice!
            }
            if self.originalPrice != nil {
                map["OriginalPrice"] = self.originalPrice!
            }
            if self.promotions != nil {
                map["Promotions"] = self.promotions?.toMap()
            }
            if self.tradePrice != nil {
                map["TradePrice"] = self.tradePrice!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Currency") {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("DiscountPrice") {
                self.discountPrice = dict["DiscountPrice"] as! Double
            }
            if dict.keys.contains("OriginalPrice") {
                self.originalPrice = dict["OriginalPrice"] as! Double
            }
            if dict.keys.contains("Promotions") {
                var model = GetResourcePackagePriceResponseBody.Data.Promotions()
                model.fromMap(dict["Promotions"] as! [String: Any])
                self.promotions = model
            }
            if dict.keys.contains("TradePrice") {
                self.tradePrice = dict["TradePrice"] as! Double
            }
        }
    }
    public var code: String?

    public var data: GetResourcePackagePriceResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetResourcePackagePriceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetResourcePackagePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourcePackagePriceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetResourcePackagePriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSubscriptionPriceRequest : Tea.TeaModel {
    public class ModuleList : Tea.TeaModel {
        public var config: String?

        public var moduleCode: String?

        public var moduleStatus: Int32?

        public var tag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.moduleCode != nil {
                map["ModuleCode"] = self.moduleCode!
            }
            if self.moduleStatus != nil {
                map["ModuleStatus"] = self.moduleStatus!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("ModuleCode") {
                self.moduleCode = dict["ModuleCode"] as! String
            }
            if dict.keys.contains("ModuleStatus") {
                self.moduleStatus = dict["ModuleStatus"] as! Int32
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
        }
    }
    public var instanceId: String?

    public var moduleList: [GetSubscriptionPriceRequest.ModuleList]?

    public var orderType: String?

    public var ownerId: Int64?

    public var productCode: String?

    public var productType: String?

    public var quantity: Int32?

    public var region: String?

    public var servicePeriodQuantity: Int32?

    public var servicePeriodUnit: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.moduleList != nil {
            var tmp : [Any] = []
            for k in self.moduleList! {
                tmp.append(k.toMap())
            }
            map["ModuleList"] = tmp
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.quantity != nil {
            map["Quantity"] = self.quantity!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.servicePeriodQuantity != nil {
            map["ServicePeriodQuantity"] = self.servicePeriodQuantity!
        }
        if self.servicePeriodUnit != nil {
            map["ServicePeriodUnit"] = self.servicePeriodUnit!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModuleList") {
            self.moduleList = dict["ModuleList"] as! [GetSubscriptionPriceRequest.ModuleList]
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("Quantity") {
            self.quantity = dict["Quantity"] as! Int32
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ServicePeriodQuantity") {
            self.servicePeriodQuantity = dict["ServicePeriodQuantity"] as! Int32
        }
        if dict.keys.contains("ServicePeriodUnit") {
            self.servicePeriodUnit = dict["ServicePeriodUnit"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class GetSubscriptionPriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ModuleDetails : Tea.TeaModel {
            public class ModuleDetail : Tea.TeaModel {
                public var costAfterDiscount: Double?

                public var invoiceDiscount: Double?

                public var moduleCode: String?

                public var originalCost: Double?

                public var unitPrice: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.costAfterDiscount != nil {
                        map["CostAfterDiscount"] = self.costAfterDiscount!
                    }
                    if self.invoiceDiscount != nil {
                        map["InvoiceDiscount"] = self.invoiceDiscount!
                    }
                    if self.moduleCode != nil {
                        map["ModuleCode"] = self.moduleCode!
                    }
                    if self.originalCost != nil {
                        map["OriginalCost"] = self.originalCost!
                    }
                    if self.unitPrice != nil {
                        map["UnitPrice"] = self.unitPrice!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CostAfterDiscount") {
                        self.costAfterDiscount = dict["CostAfterDiscount"] as! Double
                    }
                    if dict.keys.contains("InvoiceDiscount") {
                        self.invoiceDiscount = dict["InvoiceDiscount"] as! Double
                    }
                    if dict.keys.contains("ModuleCode") {
                        self.moduleCode = dict["ModuleCode"] as! String
                    }
                    if dict.keys.contains("OriginalCost") {
                        self.originalCost = dict["OriginalCost"] as! Double
                    }
                    if dict.keys.contains("UnitPrice") {
                        self.unitPrice = dict["UnitPrice"] as! Double
                    }
                }
            }
            public var moduleDetail: [GetSubscriptionPriceResponseBody.Data.ModuleDetails.ModuleDetail]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.moduleDetail != nil {
                    var tmp : [Any] = []
                    for k in self.moduleDetail! {
                        tmp.append(k.toMap())
                    }
                    map["ModuleDetail"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ModuleDetail") {
                    self.moduleDetail = dict["ModuleDetail"] as! [GetSubscriptionPriceResponseBody.Data.ModuleDetails.ModuleDetail]
                }
            }
        }
        public class PromotionDetails : Tea.TeaModel {
            public class PromotionDetail : Tea.TeaModel {
                public var promotionDesc: String?

                public var promotionId: Int64?

                public var promotionName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.promotionDesc != nil {
                        map["PromotionDesc"] = self.promotionDesc!
                    }
                    if self.promotionId != nil {
                        map["PromotionId"] = self.promotionId!
                    }
                    if self.promotionName != nil {
                        map["PromotionName"] = self.promotionName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PromotionDesc") {
                        self.promotionDesc = dict["PromotionDesc"] as! String
                    }
                    if dict.keys.contains("PromotionId") {
                        self.promotionId = dict["PromotionId"] as! Int64
                    }
                    if dict.keys.contains("PromotionName") {
                        self.promotionName = dict["PromotionName"] as! String
                    }
                }
            }
            public var promotionDetail: [GetSubscriptionPriceResponseBody.Data.PromotionDetails.PromotionDetail]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.promotionDetail != nil {
                    var tmp : [Any] = []
                    for k in self.promotionDetail! {
                        tmp.append(k.toMap())
                    }
                    map["PromotionDetail"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PromotionDetail") {
                    self.promotionDetail = dict["PromotionDetail"] as! [GetSubscriptionPriceResponseBody.Data.PromotionDetails.PromotionDetail]
                }
            }
        }
        public var currency: String?

        public var discountPrice: Double?

        public var moduleDetails: GetSubscriptionPriceResponseBody.Data.ModuleDetails?

        public var originalPrice: Double?

        public var promotionDetails: GetSubscriptionPriceResponseBody.Data.PromotionDetails?

        public var quantity: Int32?

        public var tradePrice: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.moduleDetails?.validate()
            try self.promotionDetails?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.discountPrice != nil {
                map["DiscountPrice"] = self.discountPrice!
            }
            if self.moduleDetails != nil {
                map["ModuleDetails"] = self.moduleDetails?.toMap()
            }
            if self.originalPrice != nil {
                map["OriginalPrice"] = self.originalPrice!
            }
            if self.promotionDetails != nil {
                map["PromotionDetails"] = self.promotionDetails?.toMap()
            }
            if self.quantity != nil {
                map["Quantity"] = self.quantity!
            }
            if self.tradePrice != nil {
                map["TradePrice"] = self.tradePrice!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Currency") {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("DiscountPrice") {
                self.discountPrice = dict["DiscountPrice"] as! Double
            }
            if dict.keys.contains("ModuleDetails") {
                var model = GetSubscriptionPriceResponseBody.Data.ModuleDetails()
                model.fromMap(dict["ModuleDetails"] as! [String: Any])
                self.moduleDetails = model
            }
            if dict.keys.contains("OriginalPrice") {
                self.originalPrice = dict["OriginalPrice"] as! Double
            }
            if dict.keys.contains("PromotionDetails") {
                var model = GetSubscriptionPriceResponseBody.Data.PromotionDetails()
                model.fromMap(dict["PromotionDetails"] as! [String: Any])
                self.promotionDetails = model
            }
            if dict.keys.contains("Quantity") {
                self.quantity = dict["Quantity"] as! Int32
            }
            if dict.keys.contains("TradePrice") {
                self.tradePrice = dict["TradePrice"] as! Double
            }
        }
    }
    public var code: String?

    public var data: GetSubscriptionPriceResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetSubscriptionPriceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetSubscriptionPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubscriptionPriceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSubscriptionPriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InquiryPriceRefundInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var productCode: String?

    public var productType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class InquiryPriceRefundInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var currency: String?

        public var hostId: String?

        public var instanceId: String?

        public var refundAmount: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.refundAmount != nil {
                map["RefundAmount"] = self.refundAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Currency") {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("HostId") {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("RefundAmount") {
                self.refundAmount = dict["RefundAmount"] as! Double
            }
        }
    }
    public var code: String?

    public var data: InquiryPriceRefundInstanceResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = InquiryPriceRefundInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class InquiryPriceRefundInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InquiryPriceRefundInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InquiryPriceRefundInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAccountRelationRequest : Tea.TeaModel {
    public var childNick: String?

    public var childUserId: Int64?

    public var parentUserId: Int64?

    public var permissionCodes: [String]?

    public var relationId: Int64?

    public var relationOperation: String?

    public var relationType: String?

    public var requestId: String?

    public var roleCodes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.childNick != nil {
            map["ChildNick"] = self.childNick!
        }
        if self.childUserId != nil {
            map["ChildUserId"] = self.childUserId!
        }
        if self.parentUserId != nil {
            map["ParentUserId"] = self.parentUserId!
        }
        if self.permissionCodes != nil {
            map["PermissionCodes"] = self.permissionCodes!
        }
        if self.relationId != nil {
            map["RelationId"] = self.relationId!
        }
        if self.relationOperation != nil {
            map["RelationOperation"] = self.relationOperation!
        }
        if self.relationType != nil {
            map["RelationType"] = self.relationType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleCodes != nil {
            map["RoleCodes"] = self.roleCodes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChildNick") {
            self.childNick = dict["ChildNick"] as! String
        }
        if dict.keys.contains("ChildUserId") {
            self.childUserId = dict["ChildUserId"] as! Int64
        }
        if dict.keys.contains("ParentUserId") {
            self.parentUserId = dict["ParentUserId"] as! Int64
        }
        if dict.keys.contains("PermissionCodes") {
            self.permissionCodes = dict["PermissionCodes"] as! [String]
        }
        if dict.keys.contains("RelationId") {
            self.relationId = dict["RelationId"] as! Int64
        }
        if dict.keys.contains("RelationOperation") {
            self.relationOperation = dict["RelationOperation"] as! String
        }
        if dict.keys.contains("RelationType") {
            self.relationType = dict["RelationType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleCodes") {
            self.roleCodes = dict["RoleCodes"] as! [String]
        }
    }
}

public class ModifyAccountRelationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var hostId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostId") {
                self.hostId = dict["HostId"] as! String
            }
        }
    }
    public var code: String?

    public var data: ModifyAccountRelationResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ModifyAccountRelationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ModifyAccountRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccountRelationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyAccountRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyCostUnitRequest : Tea.TeaModel {
    public class UnitEntityList : Tea.TeaModel {
        public var newUnitName: String?

        public var ownerUid: Int64?

        public var unitId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.newUnitName != nil {
                map["NewUnitName"] = self.newUnitName!
            }
            if self.ownerUid != nil {
                map["OwnerUid"] = self.ownerUid!
            }
            if self.unitId != nil {
                map["UnitId"] = self.unitId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NewUnitName") {
                self.newUnitName = dict["NewUnitName"] as! String
            }
            if dict.keys.contains("OwnerUid") {
                self.ownerUid = dict["OwnerUid"] as! Int64
            }
            if dict.keys.contains("UnitId") {
                self.unitId = dict["UnitId"] as! Int64
            }
        }
    }
    public var unitEntityList: [ModifyCostUnitRequest.UnitEntityList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.unitEntityList != nil {
            var tmp : [Any] = []
            for k in self.unitEntityList! {
                tmp.append(k.toMap())
            }
            map["UnitEntityList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UnitEntityList") {
            self.unitEntityList = dict["UnitEntityList"] as! [ModifyCostUnitRequest.UnitEntityList]
        }
    }
}

public class ModifyCostUnitResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var isSuccess: Bool?

        public var ownerUid: Int64?

        public var unitId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isSuccess != nil {
                map["IsSuccess"] = self.isSuccess!
            }
            if self.ownerUid != nil {
                map["OwnerUid"] = self.ownerUid!
            }
            if self.unitId != nil {
                map["UnitId"] = self.unitId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsSuccess") {
                self.isSuccess = dict["IsSuccess"] as! Bool
            }
            if dict.keys.contains("OwnerUid") {
                self.ownerUid = dict["OwnerUid"] as! Int64
            }
            if dict.keys.contains("UnitId") {
                self.unitId = dict["UnitId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: [ModifyCostUnitResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [ModifyCostUnitResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ModifyCostUnitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCostUnitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyCostUnitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyInstanceRequest : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var code: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clientToken: String?

    public var instanceId: String?

    public var modifyType: String?

    public var ownerId: Int64?

    public var parameter: [ModifyInstanceRequest.Parameter]?

    public var productCode: String?

    public var productType: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.parameter != nil {
            var tmp : [Any] = []
            for k in self.parameter! {
                tmp.append(k.toMap())
            }
            map["Parameter"] = tmp
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModifyType") {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Parameter") {
            self.parameter = dict["Parameter"] as! [ModifyInstanceRequest.Parameter]
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class ModifyInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var hostId: String?

        public var orderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostId") {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: ModifyInstanceResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ModifyInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ModifyInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAccountBalanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var availableAmount: String?

        public var availableCashAmount: String?

        public var creditAmount: String?

        public var currency: String?

        public var mybankCreditAmount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.availableAmount != nil {
                map["AvailableAmount"] = self.availableAmount!
            }
            if self.availableCashAmount != nil {
                map["AvailableCashAmount"] = self.availableCashAmount!
            }
            if self.creditAmount != nil {
                map["CreditAmount"] = self.creditAmount!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.mybankCreditAmount != nil {
                map["MybankCreditAmount"] = self.mybankCreditAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvailableAmount") {
                self.availableAmount = dict["AvailableAmount"] as! String
            }
            if dict.keys.contains("AvailableCashAmount") {
                self.availableCashAmount = dict["AvailableCashAmount"] as! String
            }
            if dict.keys.contains("CreditAmount") {
                self.creditAmount = dict["CreditAmount"] as! String
            }
            if dict.keys.contains("Currency") {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("MybankCreditAmount") {
                self.mybankCreditAmount = dict["MybankCreditAmount"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryAccountBalanceResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryAccountBalanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryAccountBalanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccountBalanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryAccountBalanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAccountBillRequest : Tea.TeaModel {
    public var billOwnerId: Int64?

    public var billingCycle: String?

    public var billingDate: String?

    public var granularity: String?

    public var isGroupByProduct: Bool?

    public var ownerID: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwnerId != nil {
            map["BillOwnerId"] = self.billOwnerId!
        }
        if self.billingCycle != nil {
            map["BillingCycle"] = self.billingCycle!
        }
        if self.billingDate != nil {
            map["BillingDate"] = self.billingDate!
        }
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.isGroupByProduct != nil {
            map["IsGroupByProduct"] = self.isGroupByProduct!
        }
        if self.ownerID != nil {
            map["OwnerID"] = self.ownerID!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwnerId") {
            self.billOwnerId = dict["BillOwnerId"] as! Int64
        }
        if dict.keys.contains("BillingCycle") {
            self.billingCycle = dict["BillingCycle"] as! String
        }
        if dict.keys.contains("BillingDate") {
            self.billingDate = dict["BillingDate"] as! String
        }
        if dict.keys.contains("Granularity") {
            self.granularity = dict["Granularity"] as! String
        }
        if dict.keys.contains("IsGroupByProduct") {
            self.isGroupByProduct = dict["IsGroupByProduct"] as! Bool
        }
        if dict.keys.contains("OwnerID") {
            self.ownerID = dict["OwnerID"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
    }
}

public class QueryAccountBillResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Item : Tea.TeaModel {
                public var adjustAmount: Double?

                public var billAccountID: String?

                public var billAccountName: String?

                public var billingDate: String?

                public var bizType: String?

                public var cashAmount: Double?

                public var costUnit: String?

                public var currency: String?

                public var deductedByCashCoupons: Double?

                public var deductedByCoupons: Double?

                public var deductedByPrepaidCard: Double?

                public var invoiceDiscount: Double?

                public var outstandingAmount: Double?

                public var ownerID: String?

                public var ownerName: String?

                public var paymentAmount: Double?

                public var pipCode: String?

                public var pretaxAmount: Double?

                public var pretaxGrossAmount: Double?

                public var productCode: String?

                public var productName: String?

                public var subscriptionType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.adjustAmount != nil {
                        map["AdjustAmount"] = self.adjustAmount!
                    }
                    if self.billAccountID != nil {
                        map["BillAccountID"] = self.billAccountID!
                    }
                    if self.billAccountName != nil {
                        map["BillAccountName"] = self.billAccountName!
                    }
                    if self.billingDate != nil {
                        map["BillingDate"] = self.billingDate!
                    }
                    if self.bizType != nil {
                        map["BizType"] = self.bizType!
                    }
                    if self.cashAmount != nil {
                        map["CashAmount"] = self.cashAmount!
                    }
                    if self.costUnit != nil {
                        map["CostUnit"] = self.costUnit!
                    }
                    if self.currency != nil {
                        map["Currency"] = self.currency!
                    }
                    if self.deductedByCashCoupons != nil {
                        map["DeductedByCashCoupons"] = self.deductedByCashCoupons!
                    }
                    if self.deductedByCoupons != nil {
                        map["DeductedByCoupons"] = self.deductedByCoupons!
                    }
                    if self.deductedByPrepaidCard != nil {
                        map["DeductedByPrepaidCard"] = self.deductedByPrepaidCard!
                    }
                    if self.invoiceDiscount != nil {
                        map["InvoiceDiscount"] = self.invoiceDiscount!
                    }
                    if self.outstandingAmount != nil {
                        map["OutstandingAmount"] = self.outstandingAmount!
                    }
                    if self.ownerID != nil {
                        map["OwnerID"] = self.ownerID!
                    }
                    if self.ownerName != nil {
                        map["OwnerName"] = self.ownerName!
                    }
                    if self.paymentAmount != nil {
                        map["PaymentAmount"] = self.paymentAmount!
                    }
                    if self.pipCode != nil {
                        map["PipCode"] = self.pipCode!
                    }
                    if self.pretaxAmount != nil {
                        map["PretaxAmount"] = self.pretaxAmount!
                    }
                    if self.pretaxGrossAmount != nil {
                        map["PretaxGrossAmount"] = self.pretaxGrossAmount!
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    if self.productName != nil {
                        map["ProductName"] = self.productName!
                    }
                    if self.subscriptionType != nil {
                        map["SubscriptionType"] = self.subscriptionType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AdjustAmount") {
                        self.adjustAmount = dict["AdjustAmount"] as! Double
                    }
                    if dict.keys.contains("BillAccountID") {
                        self.billAccountID = dict["BillAccountID"] as! String
                    }
                    if dict.keys.contains("BillAccountName") {
                        self.billAccountName = dict["BillAccountName"] as! String
                    }
                    if dict.keys.contains("BillingDate") {
                        self.billingDate = dict["BillingDate"] as! String
                    }
                    if dict.keys.contains("BizType") {
                        self.bizType = dict["BizType"] as! String
                    }
                    if dict.keys.contains("CashAmount") {
                        self.cashAmount = dict["CashAmount"] as! Double
                    }
                    if dict.keys.contains("CostUnit") {
                        self.costUnit = dict["CostUnit"] as! String
                    }
                    if dict.keys.contains("Currency") {
                        self.currency = dict["Currency"] as! String
                    }
                    if dict.keys.contains("DeductedByCashCoupons") {
                        self.deductedByCashCoupons = dict["DeductedByCashCoupons"] as! Double
                    }
                    if dict.keys.contains("DeductedByCoupons") {
                        self.deductedByCoupons = dict["DeductedByCoupons"] as! Double
                    }
                    if dict.keys.contains("DeductedByPrepaidCard") {
                        self.deductedByPrepaidCard = dict["DeductedByPrepaidCard"] as! Double
                    }
                    if dict.keys.contains("InvoiceDiscount") {
                        self.invoiceDiscount = dict["InvoiceDiscount"] as! Double
                    }
                    if dict.keys.contains("OutstandingAmount") {
                        self.outstandingAmount = dict["OutstandingAmount"] as! Double
                    }
                    if dict.keys.contains("OwnerID") {
                        self.ownerID = dict["OwnerID"] as! String
                    }
                    if dict.keys.contains("OwnerName") {
                        self.ownerName = dict["OwnerName"] as! String
                    }
                    if dict.keys.contains("PaymentAmount") {
                        self.paymentAmount = dict["PaymentAmount"] as! Double
                    }
                    if dict.keys.contains("PipCode") {
                        self.pipCode = dict["PipCode"] as! String
                    }
                    if dict.keys.contains("PretaxAmount") {
                        self.pretaxAmount = dict["PretaxAmount"] as! Double
                    }
                    if dict.keys.contains("PretaxGrossAmount") {
                        self.pretaxGrossAmount = dict["PretaxGrossAmount"] as! Double
                    }
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! String
                    }
                    if dict.keys.contains("ProductName") {
                        self.productName = dict["ProductName"] as! String
                    }
                    if dict.keys.contains("SubscriptionType") {
                        self.subscriptionType = dict["SubscriptionType"] as! String
                    }
                }
            }
            public var item: [QueryAccountBillResponseBody.Data.Items.Item]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.item != nil {
                    var tmp : [Any] = []
                    for k in self.item! {
                        tmp.append(k.toMap())
                    }
                    map["Item"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Item") {
                    self.item = dict["Item"] as! [QueryAccountBillResponseBody.Data.Items.Item]
                }
            }
        }
        public var accountID: String?

        public var accountName: String?

        public var billingCycle: String?

        public var items: QueryAccountBillResponseBody.Data.Items?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.items?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountID != nil {
                map["AccountID"] = self.accountID!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.billingCycle != nil {
                map["BillingCycle"] = self.billingCycle!
            }
            if self.items != nil {
                map["Items"] = self.items?.toMap()
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountID") {
                self.accountID = dict["AccountID"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("BillingCycle") {
                self.billingCycle = dict["BillingCycle"] as! String
            }
            if dict.keys.contains("Items") {
                var model = QueryAccountBillResponseBody.Data.Items()
                model.fromMap(dict["Items"] as! [String: Any])
                self.items = model
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QueryAccountBillResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryAccountBillResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryAccountBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccountBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryAccountBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAccountTransactionDetailsRequest : Tea.TeaModel {
    public var createTimeEnd: String?

    public var createTimeStart: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var recordID: String?

    public var transactionChannel: String?

    public var transactionChannelSN: String?

    public var transactionNumber: String?

    public var transactionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.recordID != nil {
            map["RecordID"] = self.recordID!
        }
        if self.transactionChannel != nil {
            map["TransactionChannel"] = self.transactionChannel!
        }
        if self.transactionChannelSN != nil {
            map["TransactionChannelSN"] = self.transactionChannelSN!
        }
        if self.transactionNumber != nil {
            map["TransactionNumber"] = self.transactionNumber!
        }
        if self.transactionType != nil {
            map["TransactionType"] = self.transactionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTimeEnd") {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateTimeStart") {
            self.createTimeStart = dict["CreateTimeStart"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RecordID") {
            self.recordID = dict["RecordID"] as! String
        }
        if dict.keys.contains("TransactionChannel") {
            self.transactionChannel = dict["TransactionChannel"] as! String
        }
        if dict.keys.contains("TransactionChannelSN") {
            self.transactionChannelSN = dict["TransactionChannelSN"] as! String
        }
        if dict.keys.contains("TransactionNumber") {
            self.transactionNumber = dict["TransactionNumber"] as! String
        }
        if dict.keys.contains("TransactionType") {
            self.transactionType = dict["TransactionType"] as! String
        }
    }
}

public class QueryAccountTransactionDetailsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AccountTransactionsList : Tea.TeaModel {
            public class AccountTransactionsList : Tea.TeaModel {
                public var amount: String?

                public var balance: String?

                public var billingCycle: String?

                public var fundType: String?

                public var recordID: String?

                public var remarks: String?

                public var transactionAccount: String?

                public var transactionChannel: String?

                public var transactionChannelSN: String?

                public var transactionFlow: String?

                public var transactionNumber: String?

                public var transactionTime: String?

                public var transactionType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.amount != nil {
                        map["Amount"] = self.amount!
                    }
                    if self.balance != nil {
                        map["Balance"] = self.balance!
                    }
                    if self.billingCycle != nil {
                        map["BillingCycle"] = self.billingCycle!
                    }
                    if self.fundType != nil {
                        map["FundType"] = self.fundType!
                    }
                    if self.recordID != nil {
                        map["RecordID"] = self.recordID!
                    }
                    if self.remarks != nil {
                        map["Remarks"] = self.remarks!
                    }
                    if self.transactionAccount != nil {
                        map["TransactionAccount"] = self.transactionAccount!
                    }
                    if self.transactionChannel != nil {
                        map["TransactionChannel"] = self.transactionChannel!
                    }
                    if self.transactionChannelSN != nil {
                        map["TransactionChannelSN"] = self.transactionChannelSN!
                    }
                    if self.transactionFlow != nil {
                        map["TransactionFlow"] = self.transactionFlow!
                    }
                    if self.transactionNumber != nil {
                        map["TransactionNumber"] = self.transactionNumber!
                    }
                    if self.transactionTime != nil {
                        map["TransactionTime"] = self.transactionTime!
                    }
                    if self.transactionType != nil {
                        map["TransactionType"] = self.transactionType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Amount") {
                        self.amount = dict["Amount"] as! String
                    }
                    if dict.keys.contains("Balance") {
                        self.balance = dict["Balance"] as! String
                    }
                    if dict.keys.contains("BillingCycle") {
                        self.billingCycle = dict["BillingCycle"] as! String
                    }
                    if dict.keys.contains("FundType") {
                        self.fundType = dict["FundType"] as! String
                    }
                    if dict.keys.contains("RecordID") {
                        self.recordID = dict["RecordID"] as! String
                    }
                    if dict.keys.contains("Remarks") {
                        self.remarks = dict["Remarks"] as! String
                    }
                    if dict.keys.contains("TransactionAccount") {
                        self.transactionAccount = dict["TransactionAccount"] as! String
                    }
                    if dict.keys.contains("TransactionChannel") {
                        self.transactionChannel = dict["TransactionChannel"] as! String
                    }
                    if dict.keys.contains("TransactionChannelSN") {
                        self.transactionChannelSN = dict["TransactionChannelSN"] as! String
                    }
                    if dict.keys.contains("TransactionFlow") {
                        self.transactionFlow = dict["TransactionFlow"] as! String
                    }
                    if dict.keys.contains("TransactionNumber") {
                        self.transactionNumber = dict["TransactionNumber"] as! String
                    }
                    if dict.keys.contains("TransactionTime") {
                        self.transactionTime = dict["TransactionTime"] as! String
                    }
                    if dict.keys.contains("TransactionType") {
                        self.transactionType = dict["TransactionType"] as! String
                    }
                }
            }
            public var accountTransactionsList: [QueryAccountTransactionDetailsResponseBody.Data.AccountTransactionsList.AccountTransactionsList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountTransactionsList != nil {
                    var tmp : [Any] = []
                    for k in self.accountTransactionsList! {
                        tmp.append(k.toMap())
                    }
                    map["AccountTransactionsList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountTransactionsList") {
                    self.accountTransactionsList = dict["AccountTransactionsList"] as! [QueryAccountTransactionDetailsResponseBody.Data.AccountTransactionsList.AccountTransactionsList]
                }
            }
        }
        public var accountName: String?

        public var accountTransactionsList: QueryAccountTransactionDetailsResponseBody.Data.AccountTransactionsList?

        public var maxResults: Int32?

        public var nextToken: String?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.accountTransactionsList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.accountTransactionsList != nil {
                map["AccountTransactionsList"] = self.accountTransactionsList?.toMap()
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("AccountTransactionsList") {
                var model = QueryAccountTransactionDetailsResponseBody.Data.AccountTransactionsList()
                model.fromMap(dict["AccountTransactionsList"] as! [String: Any])
                self.accountTransactionsList = model
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QueryAccountTransactionDetailsResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryAccountTransactionDetailsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryAccountTransactionDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccountTransactionDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryAccountTransactionDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAccountTransactionsRequest : Tea.TeaModel {
    public var createTimeEnd: String?

    public var createTimeStart: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var recordID: String?

    public var transactionChannel: String?

    public var transactionChannelSN: String?

    public var transactionFlow: String?

    public var transactionNumber: String?

    public var transactionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.recordID != nil {
            map["RecordID"] = self.recordID!
        }
        if self.transactionChannel != nil {
            map["TransactionChannel"] = self.transactionChannel!
        }
        if self.transactionChannelSN != nil {
            map["TransactionChannelSN"] = self.transactionChannelSN!
        }
        if self.transactionFlow != nil {
            map["TransactionFlow"] = self.transactionFlow!
        }
        if self.transactionNumber != nil {
            map["TransactionNumber"] = self.transactionNumber!
        }
        if self.transactionType != nil {
            map["TransactionType"] = self.transactionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTimeEnd") {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateTimeStart") {
            self.createTimeStart = dict["CreateTimeStart"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RecordID") {
            self.recordID = dict["RecordID"] as! String
        }
        if dict.keys.contains("TransactionChannel") {
            self.transactionChannel = dict["TransactionChannel"] as! String
        }
        if dict.keys.contains("TransactionChannelSN") {
            self.transactionChannelSN = dict["TransactionChannelSN"] as! String
        }
        if dict.keys.contains("TransactionFlow") {
            self.transactionFlow = dict["TransactionFlow"] as! String
        }
        if dict.keys.contains("TransactionNumber") {
            self.transactionNumber = dict["TransactionNumber"] as! String
        }
        if dict.keys.contains("TransactionType") {
            self.transactionType = dict["TransactionType"] as! String
        }
    }
}

public class QueryAccountTransactionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AccountTransactionsList : Tea.TeaModel {
            public class AccountTransactionsList : Tea.TeaModel {
                public var amount: String?

                public var balance: String?

                public var billingCycle: String?

                public var fundType: String?

                public var recordID: String?

                public var remarks: String?

                public var transactionAccount: String?

                public var transactionChannel: String?

                public var transactionChannelSN: String?

                public var transactionFlow: String?

                public var transactionNumber: String?

                public var transactionTime: String?

                public var transactionType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.amount != nil {
                        map["Amount"] = self.amount!
                    }
                    if self.balance != nil {
                        map["Balance"] = self.balance!
                    }
                    if self.billingCycle != nil {
                        map["BillingCycle"] = self.billingCycle!
                    }
                    if self.fundType != nil {
                        map["FundType"] = self.fundType!
                    }
                    if self.recordID != nil {
                        map["RecordID"] = self.recordID!
                    }
                    if self.remarks != nil {
                        map["Remarks"] = self.remarks!
                    }
                    if self.transactionAccount != nil {
                        map["TransactionAccount"] = self.transactionAccount!
                    }
                    if self.transactionChannel != nil {
                        map["TransactionChannel"] = self.transactionChannel!
                    }
                    if self.transactionChannelSN != nil {
                        map["TransactionChannelSN"] = self.transactionChannelSN!
                    }
                    if self.transactionFlow != nil {
                        map["TransactionFlow"] = self.transactionFlow!
                    }
                    if self.transactionNumber != nil {
                        map["TransactionNumber"] = self.transactionNumber!
                    }
                    if self.transactionTime != nil {
                        map["TransactionTime"] = self.transactionTime!
                    }
                    if self.transactionType != nil {
                        map["TransactionType"] = self.transactionType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Amount") {
                        self.amount = dict["Amount"] as! String
                    }
                    if dict.keys.contains("Balance") {
                        self.balance = dict["Balance"] as! String
                    }
                    if dict.keys.contains("BillingCycle") {
                        self.billingCycle = dict["BillingCycle"] as! String
                    }
                    if dict.keys.contains("FundType") {
                        self.fundType = dict["FundType"] as! String
                    }
                    if dict.keys.contains("RecordID") {
                        self.recordID = dict["RecordID"] as! String
                    }
                    if dict.keys.contains("Remarks") {
                        self.remarks = dict["Remarks"] as! String
                    }
                    if dict.keys.contains("TransactionAccount") {
                        self.transactionAccount = dict["TransactionAccount"] as! String
                    }
                    if dict.keys.contains("TransactionChannel") {
                        self.transactionChannel = dict["TransactionChannel"] as! String
                    }
                    if dict.keys.contains("TransactionChannelSN") {
                        self.transactionChannelSN = dict["TransactionChannelSN"] as! String
                    }
                    if dict.keys.contains("TransactionFlow") {
                        self.transactionFlow = dict["TransactionFlow"] as! String
                    }
                    if dict.keys.contains("TransactionNumber") {
                        self.transactionNumber = dict["TransactionNumber"] as! String
                    }
                    if dict.keys.contains("TransactionTime") {
                        self.transactionTime = dict["TransactionTime"] as! String
                    }
                    if dict.keys.contains("TransactionType") {
                        self.transactionType = dict["TransactionType"] as! String
                    }
                }
            }
            public var accountTransactionsList: [QueryAccountTransactionsResponseBody.Data.AccountTransactionsList.AccountTransactionsList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountTransactionsList != nil {
                    var tmp : [Any] = []
                    for k in self.accountTransactionsList! {
                        tmp.append(k.toMap())
                    }
                    map["AccountTransactionsList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountTransactionsList") {
                    self.accountTransactionsList = dict["AccountTransactionsList"] as! [QueryAccountTransactionsResponseBody.Data.AccountTransactionsList.AccountTransactionsList]
                }
            }
        }
        public var accountName: String?

        public var accountTransactionsList: QueryAccountTransactionsResponseBody.Data.AccountTransactionsList?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.accountTransactionsList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.accountTransactionsList != nil {
                map["AccountTransactionsList"] = self.accountTransactionsList?.toMap()
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("AccountTransactionsList") {
                var model = QueryAccountTransactionsResponseBody.Data.AccountTransactionsList()
                model.fromMap(dict["AccountTransactionsList"] as! [String: Any])
                self.accountTransactionsList = model
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QueryAccountTransactionsResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryAccountTransactionsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryAccountTransactionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccountTransactionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryAccountTransactionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAvailableInstancesRequest : Tea.TeaModel {
    public var createTimeEnd: String?

    public var createTimeStart: String?

    public var endTimeEnd: String?

    public var endTimeStart: String?

    public var instanceIDs: String?

    public var ownerId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productCode: String?

    public var productType: String?

    public var region: String?

    public var renewStatus: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.endTimeEnd != nil {
            map["EndTimeEnd"] = self.endTimeEnd!
        }
        if self.endTimeStart != nil {
            map["EndTimeStart"] = self.endTimeStart!
        }
        if self.instanceIDs != nil {
            map["InstanceIDs"] = self.instanceIDs!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.renewStatus != nil {
            map["RenewStatus"] = self.renewStatus!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTimeEnd") {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateTimeStart") {
            self.createTimeStart = dict["CreateTimeStart"] as! String
        }
        if dict.keys.contains("EndTimeEnd") {
            self.endTimeEnd = dict["EndTimeEnd"] as! String
        }
        if dict.keys.contains("EndTimeStart") {
            self.endTimeStart = dict["EndTimeStart"] as! String
        }
        if dict.keys.contains("InstanceIDs") {
            self.instanceIDs = dict["InstanceIDs"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RenewStatus") {
            self.renewStatus = dict["RenewStatus"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class QueryAvailableInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InstanceList : Tea.TeaModel {
            public var createTime: String?

            public var endTime: String?

            public var expectedReleaseTime: String?

            public var instanceID: String?

            public var ownerId: Int64?

            public var productCode: String?

            public var productType: String?

            public var region: String?

            public var releaseTime: String?

            public var renewStatus: String?

            public var renewalDuration: Int32?

            public var renewalDurationUnit: String?

            public var seller: String?

            public var sellerId: Int64?

            public var status: String?

            public var stopTime: String?

            public var subStatus: String?

            public var subscriptionType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.expectedReleaseTime != nil {
                    map["ExpectedReleaseTime"] = self.expectedReleaseTime!
                }
                if self.instanceID != nil {
                    map["InstanceID"] = self.instanceID!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                if self.productType != nil {
                    map["ProductType"] = self.productType!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.releaseTime != nil {
                    map["ReleaseTime"] = self.releaseTime!
                }
                if self.renewStatus != nil {
                    map["RenewStatus"] = self.renewStatus!
                }
                if self.renewalDuration != nil {
                    map["RenewalDuration"] = self.renewalDuration!
                }
                if self.renewalDurationUnit != nil {
                    map["RenewalDurationUnit"] = self.renewalDurationUnit!
                }
                if self.seller != nil {
                    map["Seller"] = self.seller!
                }
                if self.sellerId != nil {
                    map["SellerId"] = self.sellerId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.stopTime != nil {
                    map["StopTime"] = self.stopTime!
                }
                if self.subStatus != nil {
                    map["SubStatus"] = self.subStatus!
                }
                if self.subscriptionType != nil {
                    map["SubscriptionType"] = self.subscriptionType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("ExpectedReleaseTime") {
                    self.expectedReleaseTime = dict["ExpectedReleaseTime"] as! String
                }
                if dict.keys.contains("InstanceID") {
                    self.instanceID = dict["InstanceID"] as! String
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! Int64
                }
                if dict.keys.contains("ProductCode") {
                    self.productCode = dict["ProductCode"] as! String
                }
                if dict.keys.contains("ProductType") {
                    self.productType = dict["ProductType"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ReleaseTime") {
                    self.releaseTime = dict["ReleaseTime"] as! String
                }
                if dict.keys.contains("RenewStatus") {
                    self.renewStatus = dict["RenewStatus"] as! String
                }
                if dict.keys.contains("RenewalDuration") {
                    self.renewalDuration = dict["RenewalDuration"] as! Int32
                }
                if dict.keys.contains("RenewalDurationUnit") {
                    self.renewalDurationUnit = dict["RenewalDurationUnit"] as! String
                }
                if dict.keys.contains("Seller") {
                    self.seller = dict["Seller"] as! String
                }
                if dict.keys.contains("SellerId") {
                    self.sellerId = dict["SellerId"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StopTime") {
                    self.stopTime = dict["StopTime"] as! String
                }
                if dict.keys.contains("SubStatus") {
                    self.subStatus = dict["SubStatus"] as! String
                }
                if dict.keys.contains("SubscriptionType") {
                    self.subscriptionType = dict["SubscriptionType"] as! String
                }
            }
        }
        public var instanceList: [QueryAvailableInstancesResponseBody.Data.InstanceList]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceList != nil {
                var tmp : [Any] = []
                for k in self.instanceList! {
                    tmp.append(k.toMap())
                }
                map["InstanceList"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceList") {
                self.instanceList = dict["InstanceList"] as! [QueryAvailableInstancesResponseBody.Data.InstanceList]
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QueryAvailableInstancesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryAvailableInstancesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryAvailableInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAvailableInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryAvailableInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryBillRequest : Tea.TeaModel {
    public var billOwnerId: Int64?

    public var billingCycle: String?

    public var isDisplayLocalCurrency: Bool?

    public var isHideZeroCharge: Bool?

    public var ownerId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productCode: String?

    public var productType: String?

    public var subscriptionType: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwnerId != nil {
            map["BillOwnerId"] = self.billOwnerId!
        }
        if self.billingCycle != nil {
            map["BillingCycle"] = self.billingCycle!
        }
        if self.isDisplayLocalCurrency != nil {
            map["IsDisplayLocalCurrency"] = self.isDisplayLocalCurrency!
        }
        if self.isHideZeroCharge != nil {
            map["IsHideZeroCharge"] = self.isHideZeroCharge!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwnerId") {
            self.billOwnerId = dict["BillOwnerId"] as! Int64
        }
        if dict.keys.contains("BillingCycle") {
            self.billingCycle = dict["BillingCycle"] as! String
        }
        if dict.keys.contains("IsDisplayLocalCurrency") {
            self.isDisplayLocalCurrency = dict["IsDisplayLocalCurrency"] as! Bool
        }
        if dict.keys.contains("IsHideZeroCharge") {
            self.isHideZeroCharge = dict["IsHideZeroCharge"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class QueryBillResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Item : Tea.TeaModel {
                public var adjustAmount: Double?

                public var afterTaxAmount: Double?

                public var cashAmount: Double?

                public var commodityCode: String?

                public var currency: String?

                public var deductedByCashCoupons: Double?

                public var deductedByCoupons: Double?

                public var deductedByPrepaidCard: Double?

                public var invoiceDiscount: Double?

                public var item: String?

                public var outstandingAmount: Double?

                public var ownerID: String?

                public var paymentAmount: Double?

                public var paymentCurrency: String?

                public var paymentTime: String?

                public var paymentTransactionID: String?

                public var pipCode: String?

                public var pretaxAmount: Double?

                public var pretaxAmountLocal: Double?

                public var pretaxGrossAmount: Double?

                public var productCode: String?

                public var productDetail: String?

                public var productName: String?

                public var productType: String?

                public var recordID: String?

                public var roundDownDiscount: String?

                public var status: String?

                public var subOrderId: String?

                public var subscriptionType: String?

                public var tax: Double?

                public var usageEndTime: String?

                public var usageStartTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.adjustAmount != nil {
                        map["AdjustAmount"] = self.adjustAmount!
                    }
                    if self.afterTaxAmount != nil {
                        map["AfterTaxAmount"] = self.afterTaxAmount!
                    }
                    if self.cashAmount != nil {
                        map["CashAmount"] = self.cashAmount!
                    }
                    if self.commodityCode != nil {
                        map["CommodityCode"] = self.commodityCode!
                    }
                    if self.currency != nil {
                        map["Currency"] = self.currency!
                    }
                    if self.deductedByCashCoupons != nil {
                        map["DeductedByCashCoupons"] = self.deductedByCashCoupons!
                    }
                    if self.deductedByCoupons != nil {
                        map["DeductedByCoupons"] = self.deductedByCoupons!
                    }
                    if self.deductedByPrepaidCard != nil {
                        map["DeductedByPrepaidCard"] = self.deductedByPrepaidCard!
                    }
                    if self.invoiceDiscount != nil {
                        map["InvoiceDiscount"] = self.invoiceDiscount!
                    }
                    if self.item != nil {
                        map["Item"] = self.item!
                    }
                    if self.outstandingAmount != nil {
                        map["OutstandingAmount"] = self.outstandingAmount!
                    }
                    if self.ownerID != nil {
                        map["OwnerID"] = self.ownerID!
                    }
                    if self.paymentAmount != nil {
                        map["PaymentAmount"] = self.paymentAmount!
                    }
                    if self.paymentCurrency != nil {
                        map["PaymentCurrency"] = self.paymentCurrency!
                    }
                    if self.paymentTime != nil {
                        map["PaymentTime"] = self.paymentTime!
                    }
                    if self.paymentTransactionID != nil {
                        map["PaymentTransactionID"] = self.paymentTransactionID!
                    }
                    if self.pipCode != nil {
                        map["PipCode"] = self.pipCode!
                    }
                    if self.pretaxAmount != nil {
                        map["PretaxAmount"] = self.pretaxAmount!
                    }
                    if self.pretaxAmountLocal != nil {
                        map["PretaxAmountLocal"] = self.pretaxAmountLocal!
                    }
                    if self.pretaxGrossAmount != nil {
                        map["PretaxGrossAmount"] = self.pretaxGrossAmount!
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    if self.productDetail != nil {
                        map["ProductDetail"] = self.productDetail!
                    }
                    if self.productName != nil {
                        map["ProductName"] = self.productName!
                    }
                    if self.productType != nil {
                        map["ProductType"] = self.productType!
                    }
                    if self.recordID != nil {
                        map["RecordID"] = self.recordID!
                    }
                    if self.roundDownDiscount != nil {
                        map["RoundDownDiscount"] = self.roundDownDiscount!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.subOrderId != nil {
                        map["SubOrderId"] = self.subOrderId!
                    }
                    if self.subscriptionType != nil {
                        map["SubscriptionType"] = self.subscriptionType!
                    }
                    if self.tax != nil {
                        map["Tax"] = self.tax!
                    }
                    if self.usageEndTime != nil {
                        map["UsageEndTime"] = self.usageEndTime!
                    }
                    if self.usageStartTime != nil {
                        map["UsageStartTime"] = self.usageStartTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AdjustAmount") {
                        self.adjustAmount = dict["AdjustAmount"] as! Double
                    }
                    if dict.keys.contains("AfterTaxAmount") {
                        self.afterTaxAmount = dict["AfterTaxAmount"] as! Double
                    }
                    if dict.keys.contains("CashAmount") {
                        self.cashAmount = dict["CashAmount"] as! Double
                    }
                    if dict.keys.contains("CommodityCode") {
                        self.commodityCode = dict["CommodityCode"] as! String
                    }
                    if dict.keys.contains("Currency") {
                        self.currency = dict["Currency"] as! String
                    }
                    if dict.keys.contains("DeductedByCashCoupons") {
                        self.deductedByCashCoupons = dict["DeductedByCashCoupons"] as! Double
                    }
                    if dict.keys.contains("DeductedByCoupons") {
                        self.deductedByCoupons = dict["DeductedByCoupons"] as! Double
                    }
                    if dict.keys.contains("DeductedByPrepaidCard") {
                        self.deductedByPrepaidCard = dict["DeductedByPrepaidCard"] as! Double
                    }
                    if dict.keys.contains("InvoiceDiscount") {
                        self.invoiceDiscount = dict["InvoiceDiscount"] as! Double
                    }
                    if dict.keys.contains("Item") {
                        self.item = dict["Item"] as! String
                    }
                    if dict.keys.contains("OutstandingAmount") {
                        self.outstandingAmount = dict["OutstandingAmount"] as! Double
                    }
                    if dict.keys.contains("OwnerID") {
                        self.ownerID = dict["OwnerID"] as! String
                    }
                    if dict.keys.contains("PaymentAmount") {
                        self.paymentAmount = dict["PaymentAmount"] as! Double
                    }
                    if dict.keys.contains("PaymentCurrency") {
                        self.paymentCurrency = dict["PaymentCurrency"] as! String
                    }
                    if dict.keys.contains("PaymentTime") {
                        self.paymentTime = dict["PaymentTime"] as! String
                    }
                    if dict.keys.contains("PaymentTransactionID") {
                        self.paymentTransactionID = dict["PaymentTransactionID"] as! String
                    }
                    if dict.keys.contains("PipCode") {
                        self.pipCode = dict["PipCode"] as! String
                    }
                    if dict.keys.contains("PretaxAmount") {
                        self.pretaxAmount = dict["PretaxAmount"] as! Double
                    }
                    if dict.keys.contains("PretaxAmountLocal") {
                        self.pretaxAmountLocal = dict["PretaxAmountLocal"] as! Double
                    }
                    if dict.keys.contains("PretaxGrossAmount") {
                        self.pretaxGrossAmount = dict["PretaxGrossAmount"] as! Double
                    }
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! String
                    }
                    if dict.keys.contains("ProductDetail") {
                        self.productDetail = dict["ProductDetail"] as! String
                    }
                    if dict.keys.contains("ProductName") {
                        self.productName = dict["ProductName"] as! String
                    }
                    if dict.keys.contains("ProductType") {
                        self.productType = dict["ProductType"] as! String
                    }
                    if dict.keys.contains("RecordID") {
                        self.recordID = dict["RecordID"] as! String
                    }
                    if dict.keys.contains("RoundDownDiscount") {
                        self.roundDownDiscount = dict["RoundDownDiscount"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("SubOrderId") {
                        self.subOrderId = dict["SubOrderId"] as! String
                    }
                    if dict.keys.contains("SubscriptionType") {
                        self.subscriptionType = dict["SubscriptionType"] as! String
                    }
                    if dict.keys.contains("Tax") {
                        self.tax = dict["Tax"] as! Double
                    }
                    if dict.keys.contains("UsageEndTime") {
                        self.usageEndTime = dict["UsageEndTime"] as! String
                    }
                    if dict.keys.contains("UsageStartTime") {
                        self.usageStartTime = dict["UsageStartTime"] as! String
                    }
                }
            }
            public var item: [QueryBillResponseBody.Data.Items.Item]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.item != nil {
                    var tmp : [Any] = []
                    for k in self.item! {
                        tmp.append(k.toMap())
                    }
                    map["Item"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Item") {
                    self.item = dict["Item"] as! [QueryBillResponseBody.Data.Items.Item]
                }
            }
        }
        public var accountID: String?

        public var accountName: String?

        public var billingCycle: String?

        public var items: QueryBillResponseBody.Data.Items?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.items?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountID != nil {
                map["AccountID"] = self.accountID!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.billingCycle != nil {
                map["BillingCycle"] = self.billingCycle!
            }
            if self.items != nil {
                map["Items"] = self.items?.toMap()
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountID") {
                self.accountID = dict["AccountID"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("BillingCycle") {
                self.billingCycle = dict["BillingCycle"] as! String
            }
            if dict.keys.contains("Items") {
                var model = QueryBillResponseBody.Data.Items()
                model.fromMap(dict["Items"] as! [String: Any])
                self.items = model
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QueryBillResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryBillResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryBillOverviewRequest : Tea.TeaModel {
    public var billOwnerId: Int64?

    public var billingCycle: String?

    public var productCode: String?

    public var productType: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwnerId != nil {
            map["BillOwnerId"] = self.billOwnerId!
        }
        if self.billingCycle != nil {
            map["BillingCycle"] = self.billingCycle!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwnerId") {
            self.billOwnerId = dict["BillOwnerId"] as! Int64
        }
        if dict.keys.contains("BillingCycle") {
            self.billingCycle = dict["BillingCycle"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class QueryBillOverviewResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Item : Tea.TeaModel {
                public var adjustAmount: Double?

                public var afterTaxAmount: Double?

                public var billAccountID: String?

                public var billAccountName: String?

                public var bizType: String?

                public var cashAmount: Double?

                public var commodityCode: String?

                public var currency: String?

                public var deductedByCashCoupons: Double?

                public var deductedByCoupons: Double?

                public var deductedByPrepaidCard: Double?

                public var invoiceDiscount: Double?

                public var item: String?

                public var outstandingAmount: Double?

                public var ownerID: String?

                public var paymentAmount: Double?

                public var paymentCurrency: String?

                public var pipCode: String?

                public var pretaxAmount: Double?

                public var pretaxAmountLocal: Double?

                public var pretaxGrossAmount: Double?

                public var productCode: String?

                public var productDetail: String?

                public var productName: String?

                public var productType: String?

                public var roundDownDiscount: String?

                public var subscriptionType: String?

                public var tax: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.adjustAmount != nil {
                        map["AdjustAmount"] = self.adjustAmount!
                    }
                    if self.afterTaxAmount != nil {
                        map["AfterTaxAmount"] = self.afterTaxAmount!
                    }
                    if self.billAccountID != nil {
                        map["BillAccountID"] = self.billAccountID!
                    }
                    if self.billAccountName != nil {
                        map["BillAccountName"] = self.billAccountName!
                    }
                    if self.bizType != nil {
                        map["BizType"] = self.bizType!
                    }
                    if self.cashAmount != nil {
                        map["CashAmount"] = self.cashAmount!
                    }
                    if self.commodityCode != nil {
                        map["CommodityCode"] = self.commodityCode!
                    }
                    if self.currency != nil {
                        map["Currency"] = self.currency!
                    }
                    if self.deductedByCashCoupons != nil {
                        map["DeductedByCashCoupons"] = self.deductedByCashCoupons!
                    }
                    if self.deductedByCoupons != nil {
                        map["DeductedByCoupons"] = self.deductedByCoupons!
                    }
                    if self.deductedByPrepaidCard != nil {
                        map["DeductedByPrepaidCard"] = self.deductedByPrepaidCard!
                    }
                    if self.invoiceDiscount != nil {
                        map["InvoiceDiscount"] = self.invoiceDiscount!
                    }
                    if self.item != nil {
                        map["Item"] = self.item!
                    }
                    if self.outstandingAmount != nil {
                        map["OutstandingAmount"] = self.outstandingAmount!
                    }
                    if self.ownerID != nil {
                        map["OwnerID"] = self.ownerID!
                    }
                    if self.paymentAmount != nil {
                        map["PaymentAmount"] = self.paymentAmount!
                    }
                    if self.paymentCurrency != nil {
                        map["PaymentCurrency"] = self.paymentCurrency!
                    }
                    if self.pipCode != nil {
                        map["PipCode"] = self.pipCode!
                    }
                    if self.pretaxAmount != nil {
                        map["PretaxAmount"] = self.pretaxAmount!
                    }
                    if self.pretaxAmountLocal != nil {
                        map["PretaxAmountLocal"] = self.pretaxAmountLocal!
                    }
                    if self.pretaxGrossAmount != nil {
                        map["PretaxGrossAmount"] = self.pretaxGrossAmount!
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    if self.productDetail != nil {
                        map["ProductDetail"] = self.productDetail!
                    }
                    if self.productName != nil {
                        map["ProductName"] = self.productName!
                    }
                    if self.productType != nil {
                        map["ProductType"] = self.productType!
                    }
                    if self.roundDownDiscount != nil {
                        map["RoundDownDiscount"] = self.roundDownDiscount!
                    }
                    if self.subscriptionType != nil {
                        map["SubscriptionType"] = self.subscriptionType!
                    }
                    if self.tax != nil {
                        map["Tax"] = self.tax!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AdjustAmount") {
                        self.adjustAmount = dict["AdjustAmount"] as! Double
                    }
                    if dict.keys.contains("AfterTaxAmount") {
                        self.afterTaxAmount = dict["AfterTaxAmount"] as! Double
                    }
                    if dict.keys.contains("BillAccountID") {
                        self.billAccountID = dict["BillAccountID"] as! String
                    }
                    if dict.keys.contains("BillAccountName") {
                        self.billAccountName = dict["BillAccountName"] as! String
                    }
                    if dict.keys.contains("BizType") {
                        self.bizType = dict["BizType"] as! String
                    }
                    if dict.keys.contains("CashAmount") {
                        self.cashAmount = dict["CashAmount"] as! Double
                    }
                    if dict.keys.contains("CommodityCode") {
                        self.commodityCode = dict["CommodityCode"] as! String
                    }
                    if dict.keys.contains("Currency") {
                        self.currency = dict["Currency"] as! String
                    }
                    if dict.keys.contains("DeductedByCashCoupons") {
                        self.deductedByCashCoupons = dict["DeductedByCashCoupons"] as! Double
                    }
                    if dict.keys.contains("DeductedByCoupons") {
                        self.deductedByCoupons = dict["DeductedByCoupons"] as! Double
                    }
                    if dict.keys.contains("DeductedByPrepaidCard") {
                        self.deductedByPrepaidCard = dict["DeductedByPrepaidCard"] as! Double
                    }
                    if dict.keys.contains("InvoiceDiscount") {
                        self.invoiceDiscount = dict["InvoiceDiscount"] as! Double
                    }
                    if dict.keys.contains("Item") {
                        self.item = dict["Item"] as! String
                    }
                    if dict.keys.contains("OutstandingAmount") {
                        self.outstandingAmount = dict["OutstandingAmount"] as! Double
                    }
                    if dict.keys.contains("OwnerID") {
                        self.ownerID = dict["OwnerID"] as! String
                    }
                    if dict.keys.contains("PaymentAmount") {
                        self.paymentAmount = dict["PaymentAmount"] as! Double
                    }
                    if dict.keys.contains("PaymentCurrency") {
                        self.paymentCurrency = dict["PaymentCurrency"] as! String
                    }
                    if dict.keys.contains("PipCode") {
                        self.pipCode = dict["PipCode"] as! String
                    }
                    if dict.keys.contains("PretaxAmount") {
                        self.pretaxAmount = dict["PretaxAmount"] as! Double
                    }
                    if dict.keys.contains("PretaxAmountLocal") {
                        self.pretaxAmountLocal = dict["PretaxAmountLocal"] as! Double
                    }
                    if dict.keys.contains("PretaxGrossAmount") {
                        self.pretaxGrossAmount = dict["PretaxGrossAmount"] as! Double
                    }
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! String
                    }
                    if dict.keys.contains("ProductDetail") {
                        self.productDetail = dict["ProductDetail"] as! String
                    }
                    if dict.keys.contains("ProductName") {
                        self.productName = dict["ProductName"] as! String
                    }
                    if dict.keys.contains("ProductType") {
                        self.productType = dict["ProductType"] as! String
                    }
                    if dict.keys.contains("RoundDownDiscount") {
                        self.roundDownDiscount = dict["RoundDownDiscount"] as! String
                    }
                    if dict.keys.contains("SubscriptionType") {
                        self.subscriptionType = dict["SubscriptionType"] as! String
                    }
                    if dict.keys.contains("Tax") {
                        self.tax = dict["Tax"] as! Double
                    }
                }
            }
            public var item: [QueryBillOverviewResponseBody.Data.Items.Item]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.item != nil {
                    var tmp : [Any] = []
                    for k in self.item! {
                        tmp.append(k.toMap())
                    }
                    map["Item"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Item") {
                    self.item = dict["Item"] as! [QueryBillOverviewResponseBody.Data.Items.Item]
                }
            }
        }
        public var accountID: String?

        public var accountName: String?

        public var billingCycle: String?

        public var items: QueryBillOverviewResponseBody.Data.Items?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.items?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountID != nil {
                map["AccountID"] = self.accountID!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.billingCycle != nil {
                map["BillingCycle"] = self.billingCycle!
            }
            if self.items != nil {
                map["Items"] = self.items?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountID") {
                self.accountID = dict["AccountID"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("BillingCycle") {
                self.billingCycle = dict["BillingCycle"] as! String
            }
            if dict.keys.contains("Items") {
                var model = QueryBillOverviewResponseBody.Data.Items()
                model.fromMap(dict["Items"] as! [String: Any])
                self.items = model
            }
        }
    }
    public var code: String?

    public var data: QueryBillOverviewResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryBillOverviewResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryBillOverviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBillOverviewResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryBillOverviewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryBillToOSSSubscriptionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Item : Tea.TeaModel {
                public var bucketOwnerId: Int64?

                public var bucketPath: String?

                public var subscribeBucket: String?

                public var subscribeLanguage: String?

                public var subscribeTime: String?

                public var subscribeType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bucketOwnerId != nil {
                        map["BucketOwnerId"] = self.bucketOwnerId!
                    }
                    if self.bucketPath != nil {
                        map["BucketPath"] = self.bucketPath!
                    }
                    if self.subscribeBucket != nil {
                        map["SubscribeBucket"] = self.subscribeBucket!
                    }
                    if self.subscribeLanguage != nil {
                        map["SubscribeLanguage"] = self.subscribeLanguage!
                    }
                    if self.subscribeTime != nil {
                        map["SubscribeTime"] = self.subscribeTime!
                    }
                    if self.subscribeType != nil {
                        map["SubscribeType"] = self.subscribeType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BucketOwnerId") {
                        self.bucketOwnerId = dict["BucketOwnerId"] as! Int64
                    }
                    if dict.keys.contains("BucketPath") {
                        self.bucketPath = dict["BucketPath"] as! String
                    }
                    if dict.keys.contains("SubscribeBucket") {
                        self.subscribeBucket = dict["SubscribeBucket"] as! String
                    }
                    if dict.keys.contains("SubscribeLanguage") {
                        self.subscribeLanguage = dict["SubscribeLanguage"] as! String
                    }
                    if dict.keys.contains("SubscribeTime") {
                        self.subscribeTime = dict["SubscribeTime"] as! String
                    }
                    if dict.keys.contains("SubscribeType") {
                        self.subscribeType = dict["SubscribeType"] as! String
                    }
                }
            }
            public var item: [QueryBillToOSSSubscriptionResponseBody.Data.Items.Item]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.item != nil {
                    var tmp : [Any] = []
                    for k in self.item! {
                        tmp.append(k.toMap())
                    }
                    map["Item"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Item") {
                    self.item = dict["Item"] as! [QueryBillToOSSSubscriptionResponseBody.Data.Items.Item]
                }
            }
        }
        public var accountID: String?

        public var accountName: String?

        public var items: QueryBillToOSSSubscriptionResponseBody.Data.Items?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.items?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountID != nil {
                map["AccountID"] = self.accountID!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.items != nil {
                map["Items"] = self.items?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountID") {
                self.accountID = dict["AccountID"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("Items") {
                var model = QueryBillToOSSSubscriptionResponseBody.Data.Items()
                model.fromMap(dict["Items"] as! [String: Any])
                self.items = model
            }
        }
    }
    public var code: String?

    public var data: QueryBillToOSSSubscriptionResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryBillToOSSSubscriptionResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryBillToOSSSubscriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBillToOSSSubscriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryBillToOSSSubscriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCashCouponsRequest : Tea.TeaModel {
    public var effectiveOrNot: Bool?

    public var expiryTimeEnd: String?

    public var expiryTimeStart: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.effectiveOrNot != nil {
            map["EffectiveOrNot"] = self.effectiveOrNot!
        }
        if self.expiryTimeEnd != nil {
            map["ExpiryTimeEnd"] = self.expiryTimeEnd!
        }
        if self.expiryTimeStart != nil {
            map["ExpiryTimeStart"] = self.expiryTimeStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EffectiveOrNot") {
            self.effectiveOrNot = dict["EffectiveOrNot"] as! Bool
        }
        if dict.keys.contains("ExpiryTimeEnd") {
            self.expiryTimeEnd = dict["ExpiryTimeEnd"] as! String
        }
        if dict.keys.contains("ExpiryTimeStart") {
            self.expiryTimeStart = dict["ExpiryTimeStart"] as! String
        }
    }
}

public class QueryCashCouponsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CashCoupon : Tea.TeaModel {
            public var applicableProducts: String?

            public var applicableScenarios: String?

            public var balance: String?

            public var cashCouponId: Int64?

            public var cashCouponNo: String?

            public var effectiveTime: String?

            public var expiryTime: String?

            public var grantedTime: String?

            public var nominalValue: String?

            public var status: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applicableProducts != nil {
                    map["ApplicableProducts"] = self.applicableProducts!
                }
                if self.applicableScenarios != nil {
                    map["ApplicableScenarios"] = self.applicableScenarios!
                }
                if self.balance != nil {
                    map["Balance"] = self.balance!
                }
                if self.cashCouponId != nil {
                    map["CashCouponId"] = self.cashCouponId!
                }
                if self.cashCouponNo != nil {
                    map["CashCouponNo"] = self.cashCouponNo!
                }
                if self.effectiveTime != nil {
                    map["EffectiveTime"] = self.effectiveTime!
                }
                if self.expiryTime != nil {
                    map["ExpiryTime"] = self.expiryTime!
                }
                if self.grantedTime != nil {
                    map["GrantedTime"] = self.grantedTime!
                }
                if self.nominalValue != nil {
                    map["NominalValue"] = self.nominalValue!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApplicableProducts") {
                    self.applicableProducts = dict["ApplicableProducts"] as! String
                }
                if dict.keys.contains("ApplicableScenarios") {
                    self.applicableScenarios = dict["ApplicableScenarios"] as! String
                }
                if dict.keys.contains("Balance") {
                    self.balance = dict["Balance"] as! String
                }
                if dict.keys.contains("CashCouponId") {
                    self.cashCouponId = dict["CashCouponId"] as! Int64
                }
                if dict.keys.contains("CashCouponNo") {
                    self.cashCouponNo = dict["CashCouponNo"] as! String
                }
                if dict.keys.contains("EffectiveTime") {
                    self.effectiveTime = dict["EffectiveTime"] as! String
                }
                if dict.keys.contains("ExpiryTime") {
                    self.expiryTime = dict["ExpiryTime"] as! String
                }
                if dict.keys.contains("GrantedTime") {
                    self.grantedTime = dict["GrantedTime"] as! String
                }
                if dict.keys.contains("NominalValue") {
                    self.nominalValue = dict["NominalValue"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var cashCoupon: [QueryCashCouponsResponseBody.Data.CashCoupon]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cashCoupon != nil {
                var tmp : [Any] = []
                for k in self.cashCoupon! {
                    tmp.append(k.toMap())
                }
                map["CashCoupon"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CashCoupon") {
                self.cashCoupon = dict["CashCoupon"] as! [QueryCashCouponsResponseBody.Data.CashCoupon]
            }
        }
    }
    public var code: String?

    public var data: QueryCashCouponsResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryCashCouponsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryCashCouponsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCashCouponsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryCashCouponsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCostUnitRequest : Tea.TeaModel {
    public var ownerUid: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var parentUnitId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerUid != nil {
            map["OwnerUid"] = self.ownerUid!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentUnitId != nil {
            map["ParentUnitId"] = self.parentUnitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerUid") {
            self.ownerUid = dict["OwnerUid"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ParentUnitId") {
            self.parentUnitId = dict["ParentUnitId"] as! Int64
        }
    }
}

public class QueryCostUnitResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CostUnitDtoList : Tea.TeaModel {
            public var ownerUid: Int64?

            public var parentUnitId: Int64?

            public var unitId: Int64?

            public var unitName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ownerUid != nil {
                    map["OwnerUid"] = self.ownerUid!
                }
                if self.parentUnitId != nil {
                    map["ParentUnitId"] = self.parentUnitId!
                }
                if self.unitId != nil {
                    map["UnitId"] = self.unitId!
                }
                if self.unitName != nil {
                    map["UnitName"] = self.unitName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OwnerUid") {
                    self.ownerUid = dict["OwnerUid"] as! Int64
                }
                if dict.keys.contains("ParentUnitId") {
                    self.parentUnitId = dict["ParentUnitId"] as! Int64
                }
                if dict.keys.contains("UnitId") {
                    self.unitId = dict["UnitId"] as! Int64
                }
                if dict.keys.contains("UnitName") {
                    self.unitName = dict["UnitName"] as! String
                }
            }
        }
        public var costUnitDtoList: [QueryCostUnitResponseBody.Data.CostUnitDtoList]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.costUnitDtoList != nil {
                var tmp : [Any] = []
                for k in self.costUnitDtoList! {
                    tmp.append(k.toMap())
                }
                map["CostUnitDtoList"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CostUnitDtoList") {
                self.costUnitDtoList = dict["CostUnitDtoList"] as! [QueryCostUnitResponseBody.Data.CostUnitDtoList]
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QueryCostUnitResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryCostUnitResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryCostUnitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCostUnitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryCostUnitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCostUnitResourceRequest : Tea.TeaModel {
    public var ownerUid: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var unitId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerUid != nil {
            map["OwnerUid"] = self.ownerUid!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.unitId != nil {
            map["UnitId"] = self.unitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerUid") {
            self.ownerUid = dict["OwnerUid"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UnitId") {
            self.unitId = dict["UnitId"] as! Int64
        }
    }
}

public class QueryCostUnitResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CostUnit : Tea.TeaModel {
            public var ownerUid: Int64?

            public var parentUnitId: Int64?

            public var unitId: Int64?

            public var unitName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ownerUid != nil {
                    map["OwnerUid"] = self.ownerUid!
                }
                if self.parentUnitId != nil {
                    map["ParentUnitId"] = self.parentUnitId!
                }
                if self.unitId != nil {
                    map["UnitId"] = self.unitId!
                }
                if self.unitName != nil {
                    map["UnitName"] = self.unitName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OwnerUid") {
                    self.ownerUid = dict["OwnerUid"] as! Int64
                }
                if dict.keys.contains("ParentUnitId") {
                    self.parentUnitId = dict["ParentUnitId"] as! Int64
                }
                if dict.keys.contains("UnitId") {
                    self.unitId = dict["UnitId"] as! Int64
                }
                if dict.keys.contains("UnitName") {
                    self.unitName = dict["UnitName"] as! String
                }
            }
        }
        public class CostUnitStatisInfo : Tea.TeaModel {
            public var resourceCount: Int64?

            public var resourceGroupCount: Int64?

            public var subUnitCount: Int64?

            public var totalResourceCount: Int64?

            public var totalResourceGroupCount: Int64?

            public var totalUserCount: Int64?

            public var userCount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceCount != nil {
                    map["ResourceCount"] = self.resourceCount!
                }
                if self.resourceGroupCount != nil {
                    map["ResourceGroupCount"] = self.resourceGroupCount!
                }
                if self.subUnitCount != nil {
                    map["SubUnitCount"] = self.subUnitCount!
                }
                if self.totalResourceCount != nil {
                    map["TotalResourceCount"] = self.totalResourceCount!
                }
                if self.totalResourceGroupCount != nil {
                    map["TotalResourceGroupCount"] = self.totalResourceGroupCount!
                }
                if self.totalUserCount != nil {
                    map["TotalUserCount"] = self.totalUserCount!
                }
                if self.userCount != nil {
                    map["UserCount"] = self.userCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceCount") {
                    self.resourceCount = dict["ResourceCount"] as! Int64
                }
                if dict.keys.contains("ResourceGroupCount") {
                    self.resourceGroupCount = dict["ResourceGroupCount"] as! Int64
                }
                if dict.keys.contains("SubUnitCount") {
                    self.subUnitCount = dict["SubUnitCount"] as! Int64
                }
                if dict.keys.contains("TotalResourceCount") {
                    self.totalResourceCount = dict["TotalResourceCount"] as! Int64
                }
                if dict.keys.contains("TotalResourceGroupCount") {
                    self.totalResourceGroupCount = dict["TotalResourceGroupCount"] as! Int64
                }
                if dict.keys.contains("TotalUserCount") {
                    self.totalUserCount = dict["TotalUserCount"] as! Int64
                }
                if dict.keys.contains("UserCount") {
                    self.userCount = dict["UserCount"] as! Int64
                }
            }
        }
        public class ResourceInstanceDtoList : Tea.TeaModel {
            public var apportionCode: String?

            public var apportionName: String?

            public var commodityCode: String?

            public var commodityName: String?

            public var relatedResources: String?

            public var resourceGroup: String?

            public var resourceId: String?

            public var resourceNick: String?

            public var resourceStatus: String?

            public var resourceTag: String?

            public var resourceType: String?

            public var resourceUserId: Int64?

            public var resourceUserName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apportionCode != nil {
                    map["ApportionCode"] = self.apportionCode!
                }
                if self.apportionName != nil {
                    map["ApportionName"] = self.apportionName!
                }
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.commodityName != nil {
                    map["CommodityName"] = self.commodityName!
                }
                if self.relatedResources != nil {
                    map["RelatedResources"] = self.relatedResources!
                }
                if self.resourceGroup != nil {
                    map["ResourceGroup"] = self.resourceGroup!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceNick != nil {
                    map["ResourceNick"] = self.resourceNick!
                }
                if self.resourceStatus != nil {
                    map["ResourceStatus"] = self.resourceStatus!
                }
                if self.resourceTag != nil {
                    map["ResourceTag"] = self.resourceTag!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.resourceUserId != nil {
                    map["ResourceUserId"] = self.resourceUserId!
                }
                if self.resourceUserName != nil {
                    map["ResourceUserName"] = self.resourceUserName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApportionCode") {
                    self.apportionCode = dict["ApportionCode"] as! String
                }
                if dict.keys.contains("ApportionName") {
                    self.apportionName = dict["ApportionName"] as! String
                }
                if dict.keys.contains("CommodityCode") {
                    self.commodityCode = dict["CommodityCode"] as! String
                }
                if dict.keys.contains("CommodityName") {
                    self.commodityName = dict["CommodityName"] as! String
                }
                if dict.keys.contains("RelatedResources") {
                    self.relatedResources = dict["RelatedResources"] as! String
                }
                if dict.keys.contains("ResourceGroup") {
                    self.resourceGroup = dict["ResourceGroup"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceNick") {
                    self.resourceNick = dict["ResourceNick"] as! String
                }
                if dict.keys.contains("ResourceStatus") {
                    self.resourceStatus = dict["ResourceStatus"] as! String
                }
                if dict.keys.contains("ResourceTag") {
                    self.resourceTag = dict["ResourceTag"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("ResourceUserId") {
                    self.resourceUserId = dict["ResourceUserId"] as! Int64
                }
                if dict.keys.contains("ResourceUserName") {
                    self.resourceUserName = dict["ResourceUserName"] as! String
                }
            }
        }
        public var costUnit: QueryCostUnitResourceResponseBody.Data.CostUnit?

        public var costUnitStatisInfo: QueryCostUnitResourceResponseBody.Data.CostUnitStatisInfo?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var resourceInstanceDtoList: [QueryCostUnitResourceResponseBody.Data.ResourceInstanceDtoList]?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.costUnit?.validate()
            try self.costUnitStatisInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.costUnit != nil {
                map["CostUnit"] = self.costUnit?.toMap()
            }
            if self.costUnitStatisInfo != nil {
                map["CostUnitStatisInfo"] = self.costUnitStatisInfo?.toMap()
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.resourceInstanceDtoList != nil {
                var tmp : [Any] = []
                for k in self.resourceInstanceDtoList! {
                    tmp.append(k.toMap())
                }
                map["ResourceInstanceDtoList"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CostUnit") {
                var model = QueryCostUnitResourceResponseBody.Data.CostUnit()
                model.fromMap(dict["CostUnit"] as! [String: Any])
                self.costUnit = model
            }
            if dict.keys.contains("CostUnitStatisInfo") {
                var model = QueryCostUnitResourceResponseBody.Data.CostUnitStatisInfo()
                model.fromMap(dict["CostUnitStatisInfo"] as! [String: Any])
                self.costUnitStatisInfo = model
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("ResourceInstanceDtoList") {
                self.resourceInstanceDtoList = dict["ResourceInstanceDtoList"] as! [QueryCostUnitResourceResponseBody.Data.ResourceInstanceDtoList]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QueryCostUnitResourceResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryCostUnitResourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryCostUnitResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCostUnitResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryCostUnitResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCustomerAddressListRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class QueryCustomerAddressListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CustomerInvoiceAddressList : Tea.TeaModel {
            public class CustomerInvoiceAddress : Tea.TeaModel {
                public var addressee: String?

                public var bizType: String?

                public var city: String?

                public var county: String?

                public var deliveryAddress: String?

                public var id: Int64?

                public var phone: String?

                public var postalCode: String?

                public var province: String?

                public var street: String?

                public var userId: Int64?

                public var userNick: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.addressee != nil {
                        map["Addressee"] = self.addressee!
                    }
                    if self.bizType != nil {
                        map["BizType"] = self.bizType!
                    }
                    if self.city != nil {
                        map["City"] = self.city!
                    }
                    if self.county != nil {
                        map["County"] = self.county!
                    }
                    if self.deliveryAddress != nil {
                        map["DeliveryAddress"] = self.deliveryAddress!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.phone != nil {
                        map["Phone"] = self.phone!
                    }
                    if self.postalCode != nil {
                        map["PostalCode"] = self.postalCode!
                    }
                    if self.province != nil {
                        map["Province"] = self.province!
                    }
                    if self.street != nil {
                        map["Street"] = self.street!
                    }
                    if self.userId != nil {
                        map["UserId"] = self.userId!
                    }
                    if self.userNick != nil {
                        map["UserNick"] = self.userNick!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Addressee") {
                        self.addressee = dict["Addressee"] as! String
                    }
                    if dict.keys.contains("BizType") {
                        self.bizType = dict["BizType"] as! String
                    }
                    if dict.keys.contains("City") {
                        self.city = dict["City"] as! String
                    }
                    if dict.keys.contains("County") {
                        self.county = dict["County"] as! String
                    }
                    if dict.keys.contains("DeliveryAddress") {
                        self.deliveryAddress = dict["DeliveryAddress"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Phone") {
                        self.phone = dict["Phone"] as! String
                    }
                    if dict.keys.contains("PostalCode") {
                        self.postalCode = dict["PostalCode"] as! String
                    }
                    if dict.keys.contains("Province") {
                        self.province = dict["Province"] as! String
                    }
                    if dict.keys.contains("Street") {
                        self.street = dict["Street"] as! String
                    }
                    if dict.keys.contains("UserId") {
                        self.userId = dict["UserId"] as! Int64
                    }
                    if dict.keys.contains("UserNick") {
                        self.userNick = dict["UserNick"] as! String
                    }
                }
            }
            public var customerInvoiceAddress: [QueryCustomerAddressListResponseBody.Data.CustomerInvoiceAddressList.CustomerInvoiceAddress]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customerInvoiceAddress != nil {
                    var tmp : [Any] = []
                    for k in self.customerInvoiceAddress! {
                        tmp.append(k.toMap())
                    }
                    map["CustomerInvoiceAddress"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CustomerInvoiceAddress") {
                    self.customerInvoiceAddress = dict["CustomerInvoiceAddress"] as! [QueryCustomerAddressListResponseBody.Data.CustomerInvoiceAddressList.CustomerInvoiceAddress]
                }
            }
        }
        public var customerInvoiceAddressList: QueryCustomerAddressListResponseBody.Data.CustomerInvoiceAddressList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.customerInvoiceAddressList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customerInvoiceAddressList != nil {
                map["CustomerInvoiceAddressList"] = self.customerInvoiceAddressList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomerInvoiceAddressList") {
                var model = QueryCustomerAddressListResponseBody.Data.CustomerInvoiceAddressList()
                model.fromMap(dict["CustomerInvoiceAddressList"] as! [String: Any])
                self.customerInvoiceAddressList = model
            }
        }
    }
    public var code: String?

    public var data: QueryCustomerAddressListResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryCustomerAddressListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryCustomerAddressListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCustomerAddressListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryCustomerAddressListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDPUtilizationDetailRequest : Tea.TeaModel {
    public var commodityCode: String?

    public var deductedInstanceId: String?

    public var endTime: String?

    public var includeShare: Bool?

    public var instanceId: String?

    public var instanceSpec: String?

    public var lastToken: String?

    public var limit: Int32?

    public var prodCode: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.deductedInstanceId != nil {
            map["DeductedInstanceId"] = self.deductedInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.includeShare != nil {
            map["IncludeShare"] = self.includeShare!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceSpec != nil {
            map["InstanceSpec"] = self.instanceSpec!
        }
        if self.lastToken != nil {
            map["LastToken"] = self.lastToken!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommodityCode") {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("DeductedInstanceId") {
            self.deductedInstanceId = dict["DeductedInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("IncludeShare") {
            self.includeShare = dict["IncludeShare"] as! Bool
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceSpec") {
            self.instanceSpec = dict["InstanceSpec"] as! String
        }
        if dict.keys.contains("LastToken") {
            self.lastToken = dict["LastToken"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("ProdCode") {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class QueryDPUtilizationDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DetailList : Tea.TeaModel {
            public class DetailList : Tea.TeaModel {
                public var deductDate: String?

                public var deductFactorTotal: Double?

                public var deductHours: Double?

                public var deductMeasure: Double?

                public var deductQuantity: Double?

                public var deductedCommodityCode: String?

                public var deductedInstanceId: String?

                public var deductedProductDetail: String?

                public var instanceId: String?

                public var instanceSpec: String?

                public var region: String?

                public var resCode: String?

                public var shareUid: Int64?

                public var uid: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.deductDate != nil {
                        map["DeductDate"] = self.deductDate!
                    }
                    if self.deductFactorTotal != nil {
                        map["DeductFactorTotal"] = self.deductFactorTotal!
                    }
                    if self.deductHours != nil {
                        map["DeductHours"] = self.deductHours!
                    }
                    if self.deductMeasure != nil {
                        map["DeductMeasure"] = self.deductMeasure!
                    }
                    if self.deductQuantity != nil {
                        map["DeductQuantity"] = self.deductQuantity!
                    }
                    if self.deductedCommodityCode != nil {
                        map["DeductedCommodityCode"] = self.deductedCommodityCode!
                    }
                    if self.deductedInstanceId != nil {
                        map["DeductedInstanceId"] = self.deductedInstanceId!
                    }
                    if self.deductedProductDetail != nil {
                        map["DeductedProductDetail"] = self.deductedProductDetail!
                    }
                    if self.instanceId != nil {
                        map["InstanceId"] = self.instanceId!
                    }
                    if self.instanceSpec != nil {
                        map["InstanceSpec"] = self.instanceSpec!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.resCode != nil {
                        map["ResCode"] = self.resCode!
                    }
                    if self.shareUid != nil {
                        map["ShareUid"] = self.shareUid!
                    }
                    if self.uid != nil {
                        map["Uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DeductDate") {
                        self.deductDate = dict["DeductDate"] as! String
                    }
                    if dict.keys.contains("DeductFactorTotal") {
                        self.deductFactorTotal = dict["DeductFactorTotal"] as! Double
                    }
                    if dict.keys.contains("DeductHours") {
                        self.deductHours = dict["DeductHours"] as! Double
                    }
                    if dict.keys.contains("DeductMeasure") {
                        self.deductMeasure = dict["DeductMeasure"] as! Double
                    }
                    if dict.keys.contains("DeductQuantity") {
                        self.deductQuantity = dict["DeductQuantity"] as! Double
                    }
                    if dict.keys.contains("DeductedCommodityCode") {
                        self.deductedCommodityCode = dict["DeductedCommodityCode"] as! String
                    }
                    if dict.keys.contains("DeductedInstanceId") {
                        self.deductedInstanceId = dict["DeductedInstanceId"] as! String
                    }
                    if dict.keys.contains("DeductedProductDetail") {
                        self.deductedProductDetail = dict["DeductedProductDetail"] as! String
                    }
                    if dict.keys.contains("InstanceId") {
                        self.instanceId = dict["InstanceId"] as! String
                    }
                    if dict.keys.contains("InstanceSpec") {
                        self.instanceSpec = dict["InstanceSpec"] as! String
                    }
                    if dict.keys.contains("Region") {
                        self.region = dict["Region"] as! String
                    }
                    if dict.keys.contains("ResCode") {
                        self.resCode = dict["ResCode"] as! String
                    }
                    if dict.keys.contains("ShareUid") {
                        self.shareUid = dict["ShareUid"] as! Int64
                    }
                    if dict.keys.contains("Uid") {
                        self.uid = dict["Uid"] as! Int64
                    }
                }
            }
            public var detailList: [QueryDPUtilizationDetailResponseBody.Data.DetailList.DetailList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.detailList != nil {
                    var tmp : [Any] = []
                    for k in self.detailList! {
                        tmp.append(k.toMap())
                    }
                    map["DetailList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DetailList") {
                    self.detailList = dict["DetailList"] as! [QueryDPUtilizationDetailResponseBody.Data.DetailList.DetailList]
                }
            }
        }
        public var detailList: QueryDPUtilizationDetailResponseBody.Data.DetailList?

        public var nextToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.detailList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detailList != nil {
                map["DetailList"] = self.detailList?.toMap()
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DetailList") {
                var model = QueryDPUtilizationDetailResponseBody.Data.DetailList()
                model.fromMap(dict["DetailList"] as! [String: Any])
                self.detailList = model
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryDPUtilizationDetailResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryDPUtilizationDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryDPUtilizationDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDPUtilizationDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryDPUtilizationDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryEvaluateListRequest : Tea.TeaModel {
    public var billCycle: String?

    public var bizTypeList: [String]?

    public var endAmount: Int64?

    public var endBizTime: String?

    public var endSearchTime: String?

    public var outBizId: String?

    public var ownerId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var sortType: Int32?

    public var startAmount: Int64?

    public var startBizTime: String?

    public var startSearchTime: String?

    public var type: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billCycle != nil {
            map["BillCycle"] = self.billCycle!
        }
        if self.bizTypeList != nil {
            map["BizTypeList"] = self.bizTypeList!
        }
        if self.endAmount != nil {
            map["EndAmount"] = self.endAmount!
        }
        if self.endBizTime != nil {
            map["EndBizTime"] = self.endBizTime!
        }
        if self.endSearchTime != nil {
            map["EndSearchTime"] = self.endSearchTime!
        }
        if self.outBizId != nil {
            map["OutBizId"] = self.outBizId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortType != nil {
            map["SortType"] = self.sortType!
        }
        if self.startAmount != nil {
            map["StartAmount"] = self.startAmount!
        }
        if self.startBizTime != nil {
            map["StartBizTime"] = self.startBizTime!
        }
        if self.startSearchTime != nil {
            map["StartSearchTime"] = self.startSearchTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillCycle") {
            self.billCycle = dict["BillCycle"] as! String
        }
        if dict.keys.contains("BizTypeList") {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("EndAmount") {
            self.endAmount = dict["EndAmount"] as! Int64
        }
        if dict.keys.contains("EndBizTime") {
            self.endBizTime = dict["EndBizTime"] as! String
        }
        if dict.keys.contains("EndSearchTime") {
            self.endSearchTime = dict["EndSearchTime"] as! String
        }
        if dict.keys.contains("OutBizId") {
            self.outBizId = dict["OutBizId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SortType") {
            self.sortType = dict["SortType"] as! Int32
        }
        if dict.keys.contains("StartAmount") {
            self.startAmount = dict["StartAmount"] as! Int64
        }
        if dict.keys.contains("StartBizTime") {
            self.startBizTime = dict["StartBizTime"] as! String
        }
        if dict.keys.contains("StartSearchTime") {
            self.startSearchTime = dict["StartSearchTime"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! Int32
        }
    }
}

public class QueryEvaluateListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class EvaluateList : Tea.TeaModel {
            public class Evaluate : Tea.TeaModel {
                public var billCycle: String?

                public var billId: Int64?

                public var bizTime: String?

                public var bizType: String?

                public var canInvoiceAmount: Int64?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: Int64?

                public var invoicedAmount: Int64?

                public var itemId: Int64?

                public var name: String?

                public var offsetAcceptAmount: Int64?

                public var offsetCostAmount: Int64?

                public var opId: String?

                public var originalAmount: Int64?

                public var outBizId: String?

                public var presentAmount: Int64?

                public var status: Int32?

                public var type: Int32?

                public var userId: Int64?

                public var userNick: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.billCycle != nil {
                        map["BillCycle"] = self.billCycle!
                    }
                    if self.billId != nil {
                        map["BillId"] = self.billId!
                    }
                    if self.bizTime != nil {
                        map["BizTime"] = self.bizTime!
                    }
                    if self.bizType != nil {
                        map["BizType"] = self.bizType!
                    }
                    if self.canInvoiceAmount != nil {
                        map["CanInvoiceAmount"] = self.canInvoiceAmount!
                    }
                    if self.gmtCreate != nil {
                        map["GmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["GmtModified"] = self.gmtModified!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.invoicedAmount != nil {
                        map["InvoicedAmount"] = self.invoicedAmount!
                    }
                    if self.itemId != nil {
                        map["ItemId"] = self.itemId!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.offsetAcceptAmount != nil {
                        map["OffsetAcceptAmount"] = self.offsetAcceptAmount!
                    }
                    if self.offsetCostAmount != nil {
                        map["OffsetCostAmount"] = self.offsetCostAmount!
                    }
                    if self.opId != nil {
                        map["OpId"] = self.opId!
                    }
                    if self.originalAmount != nil {
                        map["OriginalAmount"] = self.originalAmount!
                    }
                    if self.outBizId != nil {
                        map["OutBizId"] = self.outBizId!
                    }
                    if self.presentAmount != nil {
                        map["PresentAmount"] = self.presentAmount!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.userId != nil {
                        map["UserId"] = self.userId!
                    }
                    if self.userNick != nil {
                        map["UserNick"] = self.userNick!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BillCycle") {
                        self.billCycle = dict["BillCycle"] as! String
                    }
                    if dict.keys.contains("BillId") {
                        self.billId = dict["BillId"] as! Int64
                    }
                    if dict.keys.contains("BizTime") {
                        self.bizTime = dict["BizTime"] as! String
                    }
                    if dict.keys.contains("BizType") {
                        self.bizType = dict["BizType"] as! String
                    }
                    if dict.keys.contains("CanInvoiceAmount") {
                        self.canInvoiceAmount = dict["CanInvoiceAmount"] as! Int64
                    }
                    if dict.keys.contains("GmtCreate") {
                        self.gmtCreate = dict["GmtCreate"] as! String
                    }
                    if dict.keys.contains("GmtModified") {
                        self.gmtModified = dict["GmtModified"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("InvoicedAmount") {
                        self.invoicedAmount = dict["InvoicedAmount"] as! Int64
                    }
                    if dict.keys.contains("ItemId") {
                        self.itemId = dict["ItemId"] as! Int64
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("OffsetAcceptAmount") {
                        self.offsetAcceptAmount = dict["OffsetAcceptAmount"] as! Int64
                    }
                    if dict.keys.contains("OffsetCostAmount") {
                        self.offsetCostAmount = dict["OffsetCostAmount"] as! Int64
                    }
                    if dict.keys.contains("OpId") {
                        self.opId = dict["OpId"] as! String
                    }
                    if dict.keys.contains("OriginalAmount") {
                        self.originalAmount = dict["OriginalAmount"] as! Int64
                    }
                    if dict.keys.contains("OutBizId") {
                        self.outBizId = dict["OutBizId"] as! String
                    }
                    if dict.keys.contains("PresentAmount") {
                        self.presentAmount = dict["PresentAmount"] as! Int64
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! Int32
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! Int32
                    }
                    if dict.keys.contains("UserId") {
                        self.userId = dict["UserId"] as! Int64
                    }
                    if dict.keys.contains("UserNick") {
                        self.userNick = dict["UserNick"] as! String
                    }
                }
            }
            public var evaluate: [QueryEvaluateListResponseBody.Data.EvaluateList.Evaluate]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.evaluate != nil {
                    var tmp : [Any] = []
                    for k in self.evaluate! {
                        tmp.append(k.toMap())
                    }
                    map["Evaluate"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Evaluate") {
                    self.evaluate = dict["Evaluate"] as! [QueryEvaluateListResponseBody.Data.EvaluateList.Evaluate]
                }
            }
        }
        public var evaluateList: QueryEvaluateListResponseBody.Data.EvaluateList?

        public var hostId: String?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public var totalInvoiceAmount: Int64?

        public var totalUnAppliedInvoiceAmount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.evaluateList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.evaluateList != nil {
                map["EvaluateList"] = self.evaluateList?.toMap()
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalInvoiceAmount != nil {
                map["TotalInvoiceAmount"] = self.totalInvoiceAmount!
            }
            if self.totalUnAppliedInvoiceAmount != nil {
                map["TotalUnAppliedInvoiceAmount"] = self.totalUnAppliedInvoiceAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EvaluateList") {
                var model = QueryEvaluateListResponseBody.Data.EvaluateList()
                model.fromMap(dict["EvaluateList"] as! [String: Any])
                self.evaluateList = model
            }
            if dict.keys.contains("HostId") {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("TotalInvoiceAmount") {
                self.totalInvoiceAmount = dict["TotalInvoiceAmount"] as! Int64
            }
            if dict.keys.contains("TotalUnAppliedInvoiceAmount") {
                self.totalUnAppliedInvoiceAmount = dict["TotalUnAppliedInvoiceAmount"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: QueryEvaluateListResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryEvaluateListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryEvaluateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEvaluateListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryEvaluateListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryFinancialAccountInfoRequest : Tea.TeaModel {
    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! Int64
        }
    }
}

public class QueryFinancialAccountInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountType: String?

        public var isFinancialAccount: Bool?

        public var memberGroupId: Int64?

        public var memberGroupName: String?

        public var memberNickName: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountType != nil {
                map["AccountType"] = self.accountType!
            }
            if self.isFinancialAccount != nil {
                map["IsFinancialAccount"] = self.isFinancialAccount!
            }
            if self.memberGroupId != nil {
                map["MemberGroupId"] = self.memberGroupId!
            }
            if self.memberGroupName != nil {
                map["MemberGroupName"] = self.memberGroupName!
            }
            if self.memberNickName != nil {
                map["MemberNickName"] = self.memberNickName!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountType") {
                self.accountType = dict["AccountType"] as! String
            }
            if dict.keys.contains("IsFinancialAccount") {
                self.isFinancialAccount = dict["IsFinancialAccount"] as! Bool
            }
            if dict.keys.contains("MemberGroupId") {
                self.memberGroupId = dict["MemberGroupId"] as! Int64
            }
            if dict.keys.contains("MemberGroupName") {
                self.memberGroupName = dict["MemberGroupName"] as! String
            }
            if dict.keys.contains("MemberNickName") {
                self.memberNickName = dict["MemberNickName"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryFinancialAccountInfoResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryFinancialAccountInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryFinancialAccountInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFinancialAccountInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryFinancialAccountInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryInstanceBillRequest : Tea.TeaModel {
    public var billOwnerId: Int64?

    public var billingCycle: String?

    public var billingDate: String?

    public var granularity: String?

    public var isBillingItem: Bool?

    public var isHideZeroCharge: Bool?

    public var ownerId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productCode: String?

    public var productType: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwnerId != nil {
            map["BillOwnerId"] = self.billOwnerId!
        }
        if self.billingCycle != nil {
            map["BillingCycle"] = self.billingCycle!
        }
        if self.billingDate != nil {
            map["BillingDate"] = self.billingDate!
        }
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.isBillingItem != nil {
            map["IsBillingItem"] = self.isBillingItem!
        }
        if self.isHideZeroCharge != nil {
            map["IsHideZeroCharge"] = self.isHideZeroCharge!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwnerId") {
            self.billOwnerId = dict["BillOwnerId"] as! Int64
        }
        if dict.keys.contains("BillingCycle") {
            self.billingCycle = dict["BillingCycle"] as! String
        }
        if dict.keys.contains("BillingDate") {
            self.billingDate = dict["BillingDate"] as! String
        }
        if dict.keys.contains("Granularity") {
            self.granularity = dict["Granularity"] as! String
        }
        if dict.keys.contains("IsBillingItem") {
            self.isBillingItem = dict["IsBillingItem"] as! Bool
        }
        if dict.keys.contains("IsHideZeroCharge") {
            self.isHideZeroCharge = dict["IsHideZeroCharge"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class QueryInstanceBillResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Item : Tea.TeaModel {
                public var adjustAmount: Double?

                public var billingDate: String?

                public var billingItem: String?

                public var billingType: String?

                public var cashAmount: Double?

                public var commodityCode: String?

                public var costUnit: String?

                public var currency: String?

                public var deductedByCashCoupons: Double?

                public var deductedByCoupons: Double?

                public var deductedByPrepaidCard: Double?

                public var deductedByResourcePackage: String?

                public var instanceConfig: String?

                public var instanceID: String?

                public var instanceSpec: String?

                public var internetIP: String?

                public var intranetIP: String?

                public var invoiceDiscount: Double?

                public var item: String?

                public var listPrice: String?

                public var listPriceUnit: String?

                public var nickName: String?

                public var outstandingAmount: Double?

                public var ownerID: String?

                public var paymentAmount: Double?

                public var pipCode: String?

                public var pretaxAmount: Double?

                public var pretaxGrossAmount: Double?

                public var productCode: String?

                public var productDetail: String?

                public var productName: String?

                public var productType: String?

                public var region: String?

                public var resourceGroup: String?

                public var servicePeriod: String?

                public var servicePeriodUnit: String?

                public var subscriptionType: String?

                public var tag: String?

                public var usage: String?

                public var usageUnit: String?

                public var zone: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.adjustAmount != nil {
                        map["AdjustAmount"] = self.adjustAmount!
                    }
                    if self.billingDate != nil {
                        map["BillingDate"] = self.billingDate!
                    }
                    if self.billingItem != nil {
                        map["BillingItem"] = self.billingItem!
                    }
                    if self.billingType != nil {
                        map["BillingType"] = self.billingType!
                    }
                    if self.cashAmount != nil {
                        map["CashAmount"] = self.cashAmount!
                    }
                    if self.commodityCode != nil {
                        map["CommodityCode"] = self.commodityCode!
                    }
                    if self.costUnit != nil {
                        map["CostUnit"] = self.costUnit!
                    }
                    if self.currency != nil {
                        map["Currency"] = self.currency!
                    }
                    if self.deductedByCashCoupons != nil {
                        map["DeductedByCashCoupons"] = self.deductedByCashCoupons!
                    }
                    if self.deductedByCoupons != nil {
                        map["DeductedByCoupons"] = self.deductedByCoupons!
                    }
                    if self.deductedByPrepaidCard != nil {
                        map["DeductedByPrepaidCard"] = self.deductedByPrepaidCard!
                    }
                    if self.deductedByResourcePackage != nil {
                        map["DeductedByResourcePackage"] = self.deductedByResourcePackage!
                    }
                    if self.instanceConfig != nil {
                        map["InstanceConfig"] = self.instanceConfig!
                    }
                    if self.instanceID != nil {
                        map["InstanceID"] = self.instanceID!
                    }
                    if self.instanceSpec != nil {
                        map["InstanceSpec"] = self.instanceSpec!
                    }
                    if self.internetIP != nil {
                        map["InternetIP"] = self.internetIP!
                    }
                    if self.intranetIP != nil {
                        map["IntranetIP"] = self.intranetIP!
                    }
                    if self.invoiceDiscount != nil {
                        map["InvoiceDiscount"] = self.invoiceDiscount!
                    }
                    if self.item != nil {
                        map["Item"] = self.item!
                    }
                    if self.listPrice != nil {
                        map["ListPrice"] = self.listPrice!
                    }
                    if self.listPriceUnit != nil {
                        map["ListPriceUnit"] = self.listPriceUnit!
                    }
                    if self.nickName != nil {
                        map["NickName"] = self.nickName!
                    }
                    if self.outstandingAmount != nil {
                        map["OutstandingAmount"] = self.outstandingAmount!
                    }
                    if self.ownerID != nil {
                        map["OwnerID"] = self.ownerID!
                    }
                    if self.paymentAmount != nil {
                        map["PaymentAmount"] = self.paymentAmount!
                    }
                    if self.pipCode != nil {
                        map["PipCode"] = self.pipCode!
                    }
                    if self.pretaxAmount != nil {
                        map["PretaxAmount"] = self.pretaxAmount!
                    }
                    if self.pretaxGrossAmount != nil {
                        map["PretaxGrossAmount"] = self.pretaxGrossAmount!
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    if self.productDetail != nil {
                        map["ProductDetail"] = self.productDetail!
                    }
                    if self.productName != nil {
                        map["ProductName"] = self.productName!
                    }
                    if self.productType != nil {
                        map["ProductType"] = self.productType!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.resourceGroup != nil {
                        map["ResourceGroup"] = self.resourceGroup!
                    }
                    if self.servicePeriod != nil {
                        map["ServicePeriod"] = self.servicePeriod!
                    }
                    if self.servicePeriodUnit != nil {
                        map["ServicePeriodUnit"] = self.servicePeriodUnit!
                    }
                    if self.subscriptionType != nil {
                        map["SubscriptionType"] = self.subscriptionType!
                    }
                    if self.tag != nil {
                        map["Tag"] = self.tag!
                    }
                    if self.usage != nil {
                        map["Usage"] = self.usage!
                    }
                    if self.usageUnit != nil {
                        map["UsageUnit"] = self.usageUnit!
                    }
                    if self.zone != nil {
                        map["Zone"] = self.zone!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AdjustAmount") {
                        self.adjustAmount = dict["AdjustAmount"] as! Double
                    }
                    if dict.keys.contains("BillingDate") {
                        self.billingDate = dict["BillingDate"] as! String
                    }
                    if dict.keys.contains("BillingItem") {
                        self.billingItem = dict["BillingItem"] as! String
                    }
                    if dict.keys.contains("BillingType") {
                        self.billingType = dict["BillingType"] as! String
                    }
                    if dict.keys.contains("CashAmount") {
                        self.cashAmount = dict["CashAmount"] as! Double
                    }
                    if dict.keys.contains("CommodityCode") {
                        self.commodityCode = dict["CommodityCode"] as! String
                    }
                    if dict.keys.contains("CostUnit") {
                        self.costUnit = dict["CostUnit"] as! String
                    }
                    if dict.keys.contains("Currency") {
                        self.currency = dict["Currency"] as! String
                    }
                    if dict.keys.contains("DeductedByCashCoupons") {
                        self.deductedByCashCoupons = dict["DeductedByCashCoupons"] as! Double
                    }
                    if dict.keys.contains("DeductedByCoupons") {
                        self.deductedByCoupons = dict["DeductedByCoupons"] as! Double
                    }
                    if dict.keys.contains("DeductedByPrepaidCard") {
                        self.deductedByPrepaidCard = dict["DeductedByPrepaidCard"] as! Double
                    }
                    if dict.keys.contains("DeductedByResourcePackage") {
                        self.deductedByResourcePackage = dict["DeductedByResourcePackage"] as! String
                    }
                    if dict.keys.contains("InstanceConfig") {
                        self.instanceConfig = dict["InstanceConfig"] as! String
                    }
                    if dict.keys.contains("InstanceID") {
                        self.instanceID = dict["InstanceID"] as! String
                    }
                    if dict.keys.contains("InstanceSpec") {
                        self.instanceSpec = dict["InstanceSpec"] as! String
                    }
                    if dict.keys.contains("InternetIP") {
                        self.internetIP = dict["InternetIP"] as! String
                    }
                    if dict.keys.contains("IntranetIP") {
                        self.intranetIP = dict["IntranetIP"] as! String
                    }
                    if dict.keys.contains("InvoiceDiscount") {
                        self.invoiceDiscount = dict["InvoiceDiscount"] as! Double
                    }
                    if dict.keys.contains("Item") {
                        self.item = dict["Item"] as! String
                    }
                    if dict.keys.contains("ListPrice") {
                        self.listPrice = dict["ListPrice"] as! String
                    }
                    if dict.keys.contains("ListPriceUnit") {
                        self.listPriceUnit = dict["ListPriceUnit"] as! String
                    }
                    if dict.keys.contains("NickName") {
                        self.nickName = dict["NickName"] as! String
                    }
                    if dict.keys.contains("OutstandingAmount") {
                        self.outstandingAmount = dict["OutstandingAmount"] as! Double
                    }
                    if dict.keys.contains("OwnerID") {
                        self.ownerID = dict["OwnerID"] as! String
                    }
                    if dict.keys.contains("PaymentAmount") {
                        self.paymentAmount = dict["PaymentAmount"] as! Double
                    }
                    if dict.keys.contains("PipCode") {
                        self.pipCode = dict["PipCode"] as! String
                    }
                    if dict.keys.contains("PretaxAmount") {
                        self.pretaxAmount = dict["PretaxAmount"] as! Double
                    }
                    if dict.keys.contains("PretaxGrossAmount") {
                        self.pretaxGrossAmount = dict["PretaxGrossAmount"] as! Double
                    }
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! String
                    }
                    if dict.keys.contains("ProductDetail") {
                        self.productDetail = dict["ProductDetail"] as! String
                    }
                    if dict.keys.contains("ProductName") {
                        self.productName = dict["ProductName"] as! String
                    }
                    if dict.keys.contains("ProductType") {
                        self.productType = dict["ProductType"] as! String
                    }
                    if dict.keys.contains("Region") {
                        self.region = dict["Region"] as! String
                    }
                    if dict.keys.contains("ResourceGroup") {
                        self.resourceGroup = dict["ResourceGroup"] as! String
                    }
                    if dict.keys.contains("ServicePeriod") {
                        self.servicePeriod = dict["ServicePeriod"] as! String
                    }
                    if dict.keys.contains("ServicePeriodUnit") {
                        self.servicePeriodUnit = dict["ServicePeriodUnit"] as! String
                    }
                    if dict.keys.contains("SubscriptionType") {
                        self.subscriptionType = dict["SubscriptionType"] as! String
                    }
                    if dict.keys.contains("Tag") {
                        self.tag = dict["Tag"] as! String
                    }
                    if dict.keys.contains("Usage") {
                        self.usage = dict["Usage"] as! String
                    }
                    if dict.keys.contains("UsageUnit") {
                        self.usageUnit = dict["UsageUnit"] as! String
                    }
                    if dict.keys.contains("Zone") {
                        self.zone = dict["Zone"] as! String
                    }
                }
            }
            public var item: [QueryInstanceBillResponseBody.Data.Items.Item]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.item != nil {
                    var tmp : [Any] = []
                    for k in self.item! {
                        tmp.append(k.toMap())
                    }
                    map["Item"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Item") {
                    self.item = dict["Item"] as! [QueryInstanceBillResponseBody.Data.Items.Item]
                }
            }
        }
        public var accountID: String?

        public var accountName: String?

        public var billingCycle: String?

        public var items: QueryInstanceBillResponseBody.Data.Items?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.items?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountID != nil {
                map["AccountID"] = self.accountID!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.billingCycle != nil {
                map["BillingCycle"] = self.billingCycle!
            }
            if self.items != nil {
                map["Items"] = self.items?.toMap()
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountID") {
                self.accountID = dict["AccountID"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("BillingCycle") {
                self.billingCycle = dict["BillingCycle"] as! String
            }
            if dict.keys.contains("Items") {
                var model = QueryInstanceBillResponseBody.Data.Items()
                model.fromMap(dict["Items"] as! [String: Any])
                self.items = model
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QueryInstanceBillResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryInstanceBillResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryInstanceBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryInstanceBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryInstanceBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryInstanceByTagRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [QueryInstanceByTagRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [QueryInstanceByTagRequest.Tag]
        }
    }
}

public class QueryInstanceByTagResponseBody : Tea.TeaModel {
    public class TagResource : Tea.TeaModel {
        public class Tag : Tea.TeaModel {
            public var key: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var resourceId: String?

        public var resourceType: String?

        public var tag: [QueryInstanceByTagResponseBody.TagResource.Tag]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.tag != nil {
                var tmp : [Any] = []
                for k in self.tag! {
                    tmp.append(k.toMap())
                }
                map["Tag"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! [QueryInstanceByTagResponseBody.TagResource.Tag]
            }
        }
    }
    public var code: String?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var tagResource: [QueryInstanceByTagResponseBody.TagResource]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tagResource != nil {
            var tmp : [Any] = []
            for k in self.tagResource! {
                tmp.append(k.toMap())
            }
            map["TagResource"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TagResource") {
            self.tagResource = dict["TagResource"] as! [QueryInstanceByTagResponseBody.TagResource]
        }
    }
}

public class QueryInstanceByTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryInstanceByTagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryInstanceByTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryInstanceGaapCostRequest : Tea.TeaModel {
    public var billingCycle: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productCode: String?

    public var productType: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billingCycle != nil {
            map["BillingCycle"] = self.billingCycle!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillingCycle") {
            self.billingCycle = dict["BillingCycle"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class QueryInstanceGaapCostResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Modules : Tea.TeaModel {
            public class Module : Tea.TeaModel {
                public var accountingUnit: String?

                public var billType: String?

                public var billingCycle: String?

                public var currency: String?

                public var deductedByCashCoupons: String?

                public var deductedByCoupons: String?

                public var deductedByPrepaidCard: String?

                public var gaapDeductedByCashCoupons: String?

                public var gaapDeductedByCoupons: String?

                public var gaapDeductedByPrepaidCard: String?

                public var gaapPaymentAmount: String?

                public var gaapPretaxAmount: String?

                public var gaapPretaxAmountLocal: String?

                public var gaapPretaxGrossAmount: String?

                public var gaapPricingDiscount: String?

                public var instanceID: String?

                public var monthGaapDeductedByCashCoupons: String?

                public var monthGaapDeductedByCoupons: String?

                public var monthGaapDeductedByPrepaidCard: String?

                public var monthGaapPaymentAmount: String?

                public var monthGaapPretaxAmount: String?

                public var monthGaapPretaxAmountLocal: String?

                public var monthGaapPretaxGrossAmount: String?

                public var monthGaapPricingDiscount: String?

                public var orderId: String?

                public var orderType: String?

                public var ownerID: String?

                public var payTime: String?

                public var payerAccount: String?

                public var paymentAmount: String?

                public var paymentCurrency: String?

                public var pretaxAmount: String?

                public var pretaxAmountLocal: String?

                public var pretaxGrossAmount: String?

                public var pricingDiscount: String?

                public var productCode: String?

                public var productType: String?

                public var region: String?

                public var resourceGroup: String?

                public var subOrderId: String?

                public var subscriptionType: String?

                public var tag: String?

                public var unallocatedDeductedByCashCoupons: String?

                public var unallocatedDeductedByCoupons: String?

                public var unallocatedDeductedByPrepaidCard: String?

                public var unallocatedPaymentAmount: String?

                public var unallocatedPretaxAmount: String?

                public var unallocatedPretaxAmountLocal: String?

                public var unallocatedPretaxGrossAmount: String?

                public var unallocatedPricingDiscount: String?

                public var usageEndDate: String?

                public var usageStartDate: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accountingUnit != nil {
                        map["AccountingUnit"] = self.accountingUnit!
                    }
                    if self.billType != nil {
                        map["BillType"] = self.billType!
                    }
                    if self.billingCycle != nil {
                        map["BillingCycle"] = self.billingCycle!
                    }
                    if self.currency != nil {
                        map["Currency"] = self.currency!
                    }
                    if self.deductedByCashCoupons != nil {
                        map["DeductedByCashCoupons"] = self.deductedByCashCoupons!
                    }
                    if self.deductedByCoupons != nil {
                        map["DeductedByCoupons"] = self.deductedByCoupons!
                    }
                    if self.deductedByPrepaidCard != nil {
                        map["DeductedByPrepaidCard"] = self.deductedByPrepaidCard!
                    }
                    if self.gaapDeductedByCashCoupons != nil {
                        map["GaapDeductedByCashCoupons"] = self.gaapDeductedByCashCoupons!
                    }
                    if self.gaapDeductedByCoupons != nil {
                        map["GaapDeductedByCoupons"] = self.gaapDeductedByCoupons!
                    }
                    if self.gaapDeductedByPrepaidCard != nil {
                        map["GaapDeductedByPrepaidCard"] = self.gaapDeductedByPrepaidCard!
                    }
                    if self.gaapPaymentAmount != nil {
                        map["GaapPaymentAmount"] = self.gaapPaymentAmount!
                    }
                    if self.gaapPretaxAmount != nil {
                        map["GaapPretaxAmount"] = self.gaapPretaxAmount!
                    }
                    if self.gaapPretaxAmountLocal != nil {
                        map["GaapPretaxAmountLocal"] = self.gaapPretaxAmountLocal!
                    }
                    if self.gaapPretaxGrossAmount != nil {
                        map["GaapPretaxGrossAmount"] = self.gaapPretaxGrossAmount!
                    }
                    if self.gaapPricingDiscount != nil {
                        map["GaapPricingDiscount"] = self.gaapPricingDiscount!
                    }
                    if self.instanceID != nil {
                        map["InstanceID"] = self.instanceID!
                    }
                    if self.monthGaapDeductedByCashCoupons != nil {
                        map["MonthGaapDeductedByCashCoupons"] = self.monthGaapDeductedByCashCoupons!
                    }
                    if self.monthGaapDeductedByCoupons != nil {
                        map["MonthGaapDeductedByCoupons"] = self.monthGaapDeductedByCoupons!
                    }
                    if self.monthGaapDeductedByPrepaidCard != nil {
                        map["MonthGaapDeductedByPrepaidCard"] = self.monthGaapDeductedByPrepaidCard!
                    }
                    if self.monthGaapPaymentAmount != nil {
                        map["MonthGaapPaymentAmount"] = self.monthGaapPaymentAmount!
                    }
                    if self.monthGaapPretaxAmount != nil {
                        map["MonthGaapPretaxAmount"] = self.monthGaapPretaxAmount!
                    }
                    if self.monthGaapPretaxAmountLocal != nil {
                        map["MonthGaapPretaxAmountLocal"] = self.monthGaapPretaxAmountLocal!
                    }
                    if self.monthGaapPretaxGrossAmount != nil {
                        map["MonthGaapPretaxGrossAmount"] = self.monthGaapPretaxGrossAmount!
                    }
                    if self.monthGaapPricingDiscount != nil {
                        map["MonthGaapPricingDiscount"] = self.monthGaapPricingDiscount!
                    }
                    if self.orderId != nil {
                        map["OrderId"] = self.orderId!
                    }
                    if self.orderType != nil {
                        map["OrderType"] = self.orderType!
                    }
                    if self.ownerID != nil {
                        map["OwnerID"] = self.ownerID!
                    }
                    if self.payTime != nil {
                        map["PayTime"] = self.payTime!
                    }
                    if self.payerAccount != nil {
                        map["PayerAccount"] = self.payerAccount!
                    }
                    if self.paymentAmount != nil {
                        map["PaymentAmount"] = self.paymentAmount!
                    }
                    if self.paymentCurrency != nil {
                        map["PaymentCurrency"] = self.paymentCurrency!
                    }
                    if self.pretaxAmount != nil {
                        map["PretaxAmount"] = self.pretaxAmount!
                    }
                    if self.pretaxAmountLocal != nil {
                        map["PretaxAmountLocal"] = self.pretaxAmountLocal!
                    }
                    if self.pretaxGrossAmount != nil {
                        map["PretaxGrossAmount"] = self.pretaxGrossAmount!
                    }
                    if self.pricingDiscount != nil {
                        map["PricingDiscount"] = self.pricingDiscount!
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    if self.productType != nil {
                        map["ProductType"] = self.productType!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.resourceGroup != nil {
                        map["ResourceGroup"] = self.resourceGroup!
                    }
                    if self.subOrderId != nil {
                        map["SubOrderId"] = self.subOrderId!
                    }
                    if self.subscriptionType != nil {
                        map["SubscriptionType"] = self.subscriptionType!
                    }
                    if self.tag != nil {
                        map["Tag"] = self.tag!
                    }
                    if self.unallocatedDeductedByCashCoupons != nil {
                        map["UnallocatedDeductedByCashCoupons"] = self.unallocatedDeductedByCashCoupons!
                    }
                    if self.unallocatedDeductedByCoupons != nil {
                        map["UnallocatedDeductedByCoupons"] = self.unallocatedDeductedByCoupons!
                    }
                    if self.unallocatedDeductedByPrepaidCard != nil {
                        map["UnallocatedDeductedByPrepaidCard"] = self.unallocatedDeductedByPrepaidCard!
                    }
                    if self.unallocatedPaymentAmount != nil {
                        map["UnallocatedPaymentAmount"] = self.unallocatedPaymentAmount!
                    }
                    if self.unallocatedPretaxAmount != nil {
                        map["UnallocatedPretaxAmount"] = self.unallocatedPretaxAmount!
                    }
                    if self.unallocatedPretaxAmountLocal != nil {
                        map["UnallocatedPretaxAmountLocal"] = self.unallocatedPretaxAmountLocal!
                    }
                    if self.unallocatedPretaxGrossAmount != nil {
                        map["UnallocatedPretaxGrossAmount"] = self.unallocatedPretaxGrossAmount!
                    }
                    if self.unallocatedPricingDiscount != nil {
                        map["UnallocatedPricingDiscount"] = self.unallocatedPricingDiscount!
                    }
                    if self.usageEndDate != nil {
                        map["UsageEndDate"] = self.usageEndDate!
                    }
                    if self.usageStartDate != nil {
                        map["UsageStartDate"] = self.usageStartDate!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccountingUnit") {
                        self.accountingUnit = dict["AccountingUnit"] as! String
                    }
                    if dict.keys.contains("BillType") {
                        self.billType = dict["BillType"] as! String
                    }
                    if dict.keys.contains("BillingCycle") {
                        self.billingCycle = dict["BillingCycle"] as! String
                    }
                    if dict.keys.contains("Currency") {
                        self.currency = dict["Currency"] as! String
                    }
                    if dict.keys.contains("DeductedByCashCoupons") {
                        self.deductedByCashCoupons = dict["DeductedByCashCoupons"] as! String
                    }
                    if dict.keys.contains("DeductedByCoupons") {
                        self.deductedByCoupons = dict["DeductedByCoupons"] as! String
                    }
                    if dict.keys.contains("DeductedByPrepaidCard") {
                        self.deductedByPrepaidCard = dict["DeductedByPrepaidCard"] as! String
                    }
                    if dict.keys.contains("GaapDeductedByCashCoupons") {
                        self.gaapDeductedByCashCoupons = dict["GaapDeductedByCashCoupons"] as! String
                    }
                    if dict.keys.contains("GaapDeductedByCoupons") {
                        self.gaapDeductedByCoupons = dict["GaapDeductedByCoupons"] as! String
                    }
                    if dict.keys.contains("GaapDeductedByPrepaidCard") {
                        self.gaapDeductedByPrepaidCard = dict["GaapDeductedByPrepaidCard"] as! String
                    }
                    if dict.keys.contains("GaapPaymentAmount") {
                        self.gaapPaymentAmount = dict["GaapPaymentAmount"] as! String
                    }
                    if dict.keys.contains("GaapPretaxAmount") {
                        self.gaapPretaxAmount = dict["GaapPretaxAmount"] as! String
                    }
                    if dict.keys.contains("GaapPretaxAmountLocal") {
                        self.gaapPretaxAmountLocal = dict["GaapPretaxAmountLocal"] as! String
                    }
                    if dict.keys.contains("GaapPretaxGrossAmount") {
                        self.gaapPretaxGrossAmount = dict["GaapPretaxGrossAmount"] as! String
                    }
                    if dict.keys.contains("GaapPricingDiscount") {
                        self.gaapPricingDiscount = dict["GaapPricingDiscount"] as! String
                    }
                    if dict.keys.contains("InstanceID") {
                        self.instanceID = dict["InstanceID"] as! String
                    }
                    if dict.keys.contains("MonthGaapDeductedByCashCoupons") {
                        self.monthGaapDeductedByCashCoupons = dict["MonthGaapDeductedByCashCoupons"] as! String
                    }
                    if dict.keys.contains("MonthGaapDeductedByCoupons") {
                        self.monthGaapDeductedByCoupons = dict["MonthGaapDeductedByCoupons"] as! String
                    }
                    if dict.keys.contains("MonthGaapDeductedByPrepaidCard") {
                        self.monthGaapDeductedByPrepaidCard = dict["MonthGaapDeductedByPrepaidCard"] as! String
                    }
                    if dict.keys.contains("MonthGaapPaymentAmount") {
                        self.monthGaapPaymentAmount = dict["MonthGaapPaymentAmount"] as! String
                    }
                    if dict.keys.contains("MonthGaapPretaxAmount") {
                        self.monthGaapPretaxAmount = dict["MonthGaapPretaxAmount"] as! String
                    }
                    if dict.keys.contains("MonthGaapPretaxAmountLocal") {
                        self.monthGaapPretaxAmountLocal = dict["MonthGaapPretaxAmountLocal"] as! String
                    }
                    if dict.keys.contains("MonthGaapPretaxGrossAmount") {
                        self.monthGaapPretaxGrossAmount = dict["MonthGaapPretaxGrossAmount"] as! String
                    }
                    if dict.keys.contains("MonthGaapPricingDiscount") {
                        self.monthGaapPricingDiscount = dict["MonthGaapPricingDiscount"] as! String
                    }
                    if dict.keys.contains("OrderId") {
                        self.orderId = dict["OrderId"] as! String
                    }
                    if dict.keys.contains("OrderType") {
                        self.orderType = dict["OrderType"] as! String
                    }
                    if dict.keys.contains("OwnerID") {
                        self.ownerID = dict["OwnerID"] as! String
                    }
                    if dict.keys.contains("PayTime") {
                        self.payTime = dict["PayTime"] as! String
                    }
                    if dict.keys.contains("PayerAccount") {
                        self.payerAccount = dict["PayerAccount"] as! String
                    }
                    if dict.keys.contains("PaymentAmount") {
                        self.paymentAmount = dict["PaymentAmount"] as! String
                    }
                    if dict.keys.contains("PaymentCurrency") {
                        self.paymentCurrency = dict["PaymentCurrency"] as! String
                    }
                    if dict.keys.contains("PretaxAmount") {
                        self.pretaxAmount = dict["PretaxAmount"] as! String
                    }
                    if dict.keys.contains("PretaxAmountLocal") {
                        self.pretaxAmountLocal = dict["PretaxAmountLocal"] as! String
                    }
                    if dict.keys.contains("PretaxGrossAmount") {
                        self.pretaxGrossAmount = dict["PretaxGrossAmount"] as! String
                    }
                    if dict.keys.contains("PricingDiscount") {
                        self.pricingDiscount = dict["PricingDiscount"] as! String
                    }
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! String
                    }
                    if dict.keys.contains("ProductType") {
                        self.productType = dict["ProductType"] as! String
                    }
                    if dict.keys.contains("Region") {
                        self.region = dict["Region"] as! String
                    }
                    if dict.keys.contains("ResourceGroup") {
                        self.resourceGroup = dict["ResourceGroup"] as! String
                    }
                    if dict.keys.contains("SubOrderId") {
                        self.subOrderId = dict["SubOrderId"] as! String
                    }
                    if dict.keys.contains("SubscriptionType") {
                        self.subscriptionType = dict["SubscriptionType"] as! String
                    }
                    if dict.keys.contains("Tag") {
                        self.tag = dict["Tag"] as! String
                    }
                    if dict.keys.contains("UnallocatedDeductedByCashCoupons") {
                        self.unallocatedDeductedByCashCoupons = dict["UnallocatedDeductedByCashCoupons"] as! String
                    }
                    if dict.keys.contains("UnallocatedDeductedByCoupons") {
                        self.unallocatedDeductedByCoupons = dict["UnallocatedDeductedByCoupons"] as! String
                    }
                    if dict.keys.contains("UnallocatedDeductedByPrepaidCard") {
                        self.unallocatedDeductedByPrepaidCard = dict["UnallocatedDeductedByPrepaidCard"] as! String
                    }
                    if dict.keys.contains("UnallocatedPaymentAmount") {
                        self.unallocatedPaymentAmount = dict["UnallocatedPaymentAmount"] as! String
                    }
                    if dict.keys.contains("UnallocatedPretaxAmount") {
                        self.unallocatedPretaxAmount = dict["UnallocatedPretaxAmount"] as! String
                    }
                    if dict.keys.contains("UnallocatedPretaxAmountLocal") {
                        self.unallocatedPretaxAmountLocal = dict["UnallocatedPretaxAmountLocal"] as! String
                    }
                    if dict.keys.contains("UnallocatedPretaxGrossAmount") {
                        self.unallocatedPretaxGrossAmount = dict["UnallocatedPretaxGrossAmount"] as! String
                    }
                    if dict.keys.contains("UnallocatedPricingDiscount") {
                        self.unallocatedPricingDiscount = dict["UnallocatedPricingDiscount"] as! String
                    }
                    if dict.keys.contains("UsageEndDate") {
                        self.usageEndDate = dict["UsageEndDate"] as! String
                    }
                    if dict.keys.contains("UsageStartDate") {
                        self.usageStartDate = dict["UsageStartDate"] as! String
                    }
                }
            }
            public var module: [QueryInstanceGaapCostResponseBody.Data.Modules.Module]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.module != nil {
                    var tmp : [Any] = []
                    for k in self.module! {
                        tmp.append(k.toMap())
                    }
                    map["Module"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Module") {
                    self.module = dict["Module"] as! [QueryInstanceGaapCostResponseBody.Data.Modules.Module]
                }
            }
        }
        public var hostId: String?

        public var modules: QueryInstanceGaapCostResponseBody.Data.Modules?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.modules?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.modules != nil {
                map["Modules"] = self.modules?.toMap()
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostId") {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("Modules") {
                var model = QueryInstanceGaapCostResponseBody.Data.Modules()
                model.fromMap(dict["Modules"] as! [String: Any])
                self.modules = model
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QueryInstanceGaapCostResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryInstanceGaapCostResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryInstanceGaapCostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryInstanceGaapCostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryInstanceGaapCostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryInvoicingCustomerListRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class QueryInvoicingCustomerListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CustomerInvoiceList : Tea.TeaModel {
            public class CustomerInvoice : Tea.TeaModel {
                public var adjustType: Int64?

                public var bank: String?

                public var bankNo: String?

                public var customerType: Int64?

                public var defaultRemark: String?

                public var endCycle: Int64?

                public var gmtCreate: String?

                public var id: Int64?

                public var invoiceTitle: String?

                public var issueType: Int64?

                public var operatingLicenseAddress: String?

                public var operatingLicensePhone: String?

                public var registerNo: String?

                public var startCycle: Int64?

                public var status: Int64?

                public var taxationLicense: String?

                public var taxpayerType: Int64?

                public var titleChangeInstructions: String?

                public var type: Int64?

                public var userId: Int64?

                public var userNick: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.adjustType != nil {
                        map["AdjustType"] = self.adjustType!
                    }
                    if self.bank != nil {
                        map["Bank"] = self.bank!
                    }
                    if self.bankNo != nil {
                        map["BankNo"] = self.bankNo!
                    }
                    if self.customerType != nil {
                        map["CustomerType"] = self.customerType!
                    }
                    if self.defaultRemark != nil {
                        map["DefaultRemark"] = self.defaultRemark!
                    }
                    if self.endCycle != nil {
                        map["EndCycle"] = self.endCycle!
                    }
                    if self.gmtCreate != nil {
                        map["GmtCreate"] = self.gmtCreate!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.invoiceTitle != nil {
                        map["InvoiceTitle"] = self.invoiceTitle!
                    }
                    if self.issueType != nil {
                        map["IssueType"] = self.issueType!
                    }
                    if self.operatingLicenseAddress != nil {
                        map["OperatingLicenseAddress"] = self.operatingLicenseAddress!
                    }
                    if self.operatingLicensePhone != nil {
                        map["OperatingLicensePhone"] = self.operatingLicensePhone!
                    }
                    if self.registerNo != nil {
                        map["RegisterNo"] = self.registerNo!
                    }
                    if self.startCycle != nil {
                        map["StartCycle"] = self.startCycle!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.taxationLicense != nil {
                        map["TaxationLicense"] = self.taxationLicense!
                    }
                    if self.taxpayerType != nil {
                        map["TaxpayerType"] = self.taxpayerType!
                    }
                    if self.titleChangeInstructions != nil {
                        map["TitleChangeInstructions"] = self.titleChangeInstructions!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.userId != nil {
                        map["UserId"] = self.userId!
                    }
                    if self.userNick != nil {
                        map["UserNick"] = self.userNick!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AdjustType") {
                        self.adjustType = dict["AdjustType"] as! Int64
                    }
                    if dict.keys.contains("Bank") {
                        self.bank = dict["Bank"] as! String
                    }
                    if dict.keys.contains("BankNo") {
                        self.bankNo = dict["BankNo"] as! String
                    }
                    if dict.keys.contains("CustomerType") {
                        self.customerType = dict["CustomerType"] as! Int64
                    }
                    if dict.keys.contains("DefaultRemark") {
                        self.defaultRemark = dict["DefaultRemark"] as! String
                    }
                    if dict.keys.contains("EndCycle") {
                        self.endCycle = dict["EndCycle"] as! Int64
                    }
                    if dict.keys.contains("GmtCreate") {
                        self.gmtCreate = dict["GmtCreate"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("InvoiceTitle") {
                        self.invoiceTitle = dict["InvoiceTitle"] as! String
                    }
                    if dict.keys.contains("IssueType") {
                        self.issueType = dict["IssueType"] as! Int64
                    }
                    if dict.keys.contains("OperatingLicenseAddress") {
                        self.operatingLicenseAddress = dict["OperatingLicenseAddress"] as! String
                    }
                    if dict.keys.contains("OperatingLicensePhone") {
                        self.operatingLicensePhone = dict["OperatingLicensePhone"] as! String
                    }
                    if dict.keys.contains("RegisterNo") {
                        self.registerNo = dict["RegisterNo"] as! String
                    }
                    if dict.keys.contains("StartCycle") {
                        self.startCycle = dict["StartCycle"] as! Int64
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! Int64
                    }
                    if dict.keys.contains("TaxationLicense") {
                        self.taxationLicense = dict["TaxationLicense"] as! String
                    }
                    if dict.keys.contains("TaxpayerType") {
                        self.taxpayerType = dict["TaxpayerType"] as! Int64
                    }
                    if dict.keys.contains("TitleChangeInstructions") {
                        self.titleChangeInstructions = dict["TitleChangeInstructions"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! Int64
                    }
                    if dict.keys.contains("UserId") {
                        self.userId = dict["UserId"] as! Int64
                    }
                    if dict.keys.contains("UserNick") {
                        self.userNick = dict["UserNick"] as! String
                    }
                }
            }
            public var customerInvoice: [QueryInvoicingCustomerListResponseBody.Data.CustomerInvoiceList.CustomerInvoice]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customerInvoice != nil {
                    var tmp : [Any] = []
                    for k in self.customerInvoice! {
                        tmp.append(k.toMap())
                    }
                    map["CustomerInvoice"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CustomerInvoice") {
                    self.customerInvoice = dict["CustomerInvoice"] as! [QueryInvoicingCustomerListResponseBody.Data.CustomerInvoiceList.CustomerInvoice]
                }
            }
        }
        public var customerInvoiceList: QueryInvoicingCustomerListResponseBody.Data.CustomerInvoiceList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.customerInvoiceList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customerInvoiceList != nil {
                map["CustomerInvoiceList"] = self.customerInvoiceList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomerInvoiceList") {
                var model = QueryInvoicingCustomerListResponseBody.Data.CustomerInvoiceList()
                model.fromMap(dict["CustomerInvoiceList"] as! [String: Any])
                self.customerInvoiceList = model
            }
        }
    }
    public var code: String?

    public var data: QueryInvoicingCustomerListResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryInvoicingCustomerListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryInvoicingCustomerListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryInvoicingCustomerListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryInvoicingCustomerListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMonthlyBillRequest : Tea.TeaModel {
    public var billingCycle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billingCycle != nil {
            map["BillingCycle"] = self.billingCycle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillingCycle") {
            self.billingCycle = dict["BillingCycle"] as! String
        }
    }
}

public class QueryMonthlyBillResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Item : Tea.TeaModel {
                public var afterTaxAmount: Double?

                public var currency: String?

                public var deductedByCashCoupons: Double?

                public var deductedByCoupons: Double?

                public var deductedByPrepaidCard: Double?

                public var invoiceDiscount: Double?

                public var item: String?

                public var outstandingAmount: Double?

                public var paymentAmount: Double?

                public var paymentCurrency: String?

                public var pretaxAmount: Double?

                public var pretaxAmountLocal: Double?

                public var pretaxGrossAmount: Double?

                public var productCode: String?

                public var productType: String?

                public var solutionCode: String?

                public var solutionName: String?

                public var subscriptionType: String?

                public var tax: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.afterTaxAmount != nil {
                        map["AfterTaxAmount"] = self.afterTaxAmount!
                    }
                    if self.currency != nil {
                        map["Currency"] = self.currency!
                    }
                    if self.deductedByCashCoupons != nil {
                        map["DeductedByCashCoupons"] = self.deductedByCashCoupons!
                    }
                    if self.deductedByCoupons != nil {
                        map["DeductedByCoupons"] = self.deductedByCoupons!
                    }
                    if self.deductedByPrepaidCard != nil {
                        map["DeductedByPrepaidCard"] = self.deductedByPrepaidCard!
                    }
                    if self.invoiceDiscount != nil {
                        map["InvoiceDiscount"] = self.invoiceDiscount!
                    }
                    if self.item != nil {
                        map["Item"] = self.item!
                    }
                    if self.outstandingAmount != nil {
                        map["OutstandingAmount"] = self.outstandingAmount!
                    }
                    if self.paymentAmount != nil {
                        map["PaymentAmount"] = self.paymentAmount!
                    }
                    if self.paymentCurrency != nil {
                        map["PaymentCurrency"] = self.paymentCurrency!
                    }
                    if self.pretaxAmount != nil {
                        map["PretaxAmount"] = self.pretaxAmount!
                    }
                    if self.pretaxAmountLocal != nil {
                        map["PretaxAmountLocal"] = self.pretaxAmountLocal!
                    }
                    if self.pretaxGrossAmount != nil {
                        map["PretaxGrossAmount"] = self.pretaxGrossAmount!
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    if self.productType != nil {
                        map["ProductType"] = self.productType!
                    }
                    if self.solutionCode != nil {
                        map["SolutionCode"] = self.solutionCode!
                    }
                    if self.solutionName != nil {
                        map["SolutionName"] = self.solutionName!
                    }
                    if self.subscriptionType != nil {
                        map["SubscriptionType"] = self.subscriptionType!
                    }
                    if self.tax != nil {
                        map["Tax"] = self.tax!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AfterTaxAmount") {
                        self.afterTaxAmount = dict["AfterTaxAmount"] as! Double
                    }
                    if dict.keys.contains("Currency") {
                        self.currency = dict["Currency"] as! String
                    }
                    if dict.keys.contains("DeductedByCashCoupons") {
                        self.deductedByCashCoupons = dict["DeductedByCashCoupons"] as! Double
                    }
                    if dict.keys.contains("DeductedByCoupons") {
                        self.deductedByCoupons = dict["DeductedByCoupons"] as! Double
                    }
                    if dict.keys.contains("DeductedByPrepaidCard") {
                        self.deductedByPrepaidCard = dict["DeductedByPrepaidCard"] as! Double
                    }
                    if dict.keys.contains("InvoiceDiscount") {
                        self.invoiceDiscount = dict["InvoiceDiscount"] as! Double
                    }
                    if dict.keys.contains("Item") {
                        self.item = dict["Item"] as! String
                    }
                    if dict.keys.contains("OutstandingAmount") {
                        self.outstandingAmount = dict["OutstandingAmount"] as! Double
                    }
                    if dict.keys.contains("PaymentAmount") {
                        self.paymentAmount = dict["PaymentAmount"] as! Double
                    }
                    if dict.keys.contains("PaymentCurrency") {
                        self.paymentCurrency = dict["PaymentCurrency"] as! String
                    }
                    if dict.keys.contains("PretaxAmount") {
                        self.pretaxAmount = dict["PretaxAmount"] as! Double
                    }
                    if dict.keys.contains("PretaxAmountLocal") {
                        self.pretaxAmountLocal = dict["PretaxAmountLocal"] as! Double
                    }
                    if dict.keys.contains("PretaxGrossAmount") {
                        self.pretaxGrossAmount = dict["PretaxGrossAmount"] as! Double
                    }
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! String
                    }
                    if dict.keys.contains("ProductType") {
                        self.productType = dict["ProductType"] as! String
                    }
                    if dict.keys.contains("SolutionCode") {
                        self.solutionCode = dict["SolutionCode"] as! String
                    }
                    if dict.keys.contains("SolutionName") {
                        self.solutionName = dict["SolutionName"] as! String
                    }
                    if dict.keys.contains("SubscriptionType") {
                        self.subscriptionType = dict["SubscriptionType"] as! String
                    }
                    if dict.keys.contains("Tax") {
                        self.tax = dict["Tax"] as! Double
                    }
                }
            }
            public var item: [QueryMonthlyBillResponseBody.Data.Items.Item]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.item != nil {
                    var tmp : [Any] = []
                    for k in self.item! {
                        tmp.append(k.toMap())
                    }
                    map["Item"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Item") {
                    self.item = dict["Item"] as! [QueryMonthlyBillResponseBody.Data.Items.Item]
                }
            }
        }
        public var billingCycle: String?

        public var items: QueryMonthlyBillResponseBody.Data.Items?

        public var newInvoiceAmount: Double?

        public var outstandingAmount: Double?

        public var totalOutstandingAmount: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.items?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billingCycle != nil {
                map["BillingCycle"] = self.billingCycle!
            }
            if self.items != nil {
                map["Items"] = self.items?.toMap()
            }
            if self.newInvoiceAmount != nil {
                map["NewInvoiceAmount"] = self.newInvoiceAmount!
            }
            if self.outstandingAmount != nil {
                map["OutstandingAmount"] = self.outstandingAmount!
            }
            if self.totalOutstandingAmount != nil {
                map["TotalOutstandingAmount"] = self.totalOutstandingAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BillingCycle") {
                self.billingCycle = dict["BillingCycle"] as! String
            }
            if dict.keys.contains("Items") {
                var model = QueryMonthlyBillResponseBody.Data.Items()
                model.fromMap(dict["Items"] as! [String: Any])
                self.items = model
            }
            if dict.keys.contains("NewInvoiceAmount") {
                self.newInvoiceAmount = dict["NewInvoiceAmount"] as! Double
            }
            if dict.keys.contains("OutstandingAmount") {
                self.outstandingAmount = dict["OutstandingAmount"] as! Double
            }
            if dict.keys.contains("TotalOutstandingAmount") {
                self.totalOutstandingAmount = dict["TotalOutstandingAmount"] as! Double
            }
        }
    }
    public var code: String?

    public var data: QueryMonthlyBillResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryMonthlyBillResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryMonthlyBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMonthlyBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryMonthlyBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMonthlyInstanceConsumptionRequest : Tea.TeaModel {
    public var billingCycle: String?

    public var ownerId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productCode: String?

    public var productType: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billingCycle != nil {
            map["BillingCycle"] = self.billingCycle!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillingCycle") {
            self.billingCycle = dict["BillingCycle"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class QueryMonthlyInstanceConsumptionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Item : Tea.TeaModel {
                public var afterTaxAmount: Double?

                public var currency: String?

                public var discountAmount: Double?

                public var instanceID: String?

                public var ownerID: String?

                public var payerAccount: String?

                public var paymentCurrency: String?

                public var pretaxAmount: Double?

                public var pretaxAmountLocal: Double?

                public var pretaxGrossAmount: Double?

                public var productCode: String?

                public var productType: String?

                public var region: String?

                public var resourceGroup: String?

                public var subscriptionType: String?

                public var tag: String?

                public var tax: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.afterTaxAmount != nil {
                        map["AfterTaxAmount"] = self.afterTaxAmount!
                    }
                    if self.currency != nil {
                        map["Currency"] = self.currency!
                    }
                    if self.discountAmount != nil {
                        map["DiscountAmount"] = self.discountAmount!
                    }
                    if self.instanceID != nil {
                        map["InstanceID"] = self.instanceID!
                    }
                    if self.ownerID != nil {
                        map["OwnerID"] = self.ownerID!
                    }
                    if self.payerAccount != nil {
                        map["PayerAccount"] = self.payerAccount!
                    }
                    if self.paymentCurrency != nil {
                        map["PaymentCurrency"] = self.paymentCurrency!
                    }
                    if self.pretaxAmount != nil {
                        map["PretaxAmount"] = self.pretaxAmount!
                    }
                    if self.pretaxAmountLocal != nil {
                        map["PretaxAmountLocal"] = self.pretaxAmountLocal!
                    }
                    if self.pretaxGrossAmount != nil {
                        map["PretaxGrossAmount"] = self.pretaxGrossAmount!
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    if self.productType != nil {
                        map["ProductType"] = self.productType!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.resourceGroup != nil {
                        map["ResourceGroup"] = self.resourceGroup!
                    }
                    if self.subscriptionType != nil {
                        map["SubscriptionType"] = self.subscriptionType!
                    }
                    if self.tag != nil {
                        map["Tag"] = self.tag!
                    }
                    if self.tax != nil {
                        map["Tax"] = self.tax!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AfterTaxAmount") {
                        self.afterTaxAmount = dict["AfterTaxAmount"] as! Double
                    }
                    if dict.keys.contains("Currency") {
                        self.currency = dict["Currency"] as! String
                    }
                    if dict.keys.contains("DiscountAmount") {
                        self.discountAmount = dict["DiscountAmount"] as! Double
                    }
                    if dict.keys.contains("InstanceID") {
                        self.instanceID = dict["InstanceID"] as! String
                    }
                    if dict.keys.contains("OwnerID") {
                        self.ownerID = dict["OwnerID"] as! String
                    }
                    if dict.keys.contains("PayerAccount") {
                        self.payerAccount = dict["PayerAccount"] as! String
                    }
                    if dict.keys.contains("PaymentCurrency") {
                        self.paymentCurrency = dict["PaymentCurrency"] as! String
                    }
                    if dict.keys.contains("PretaxAmount") {
                        self.pretaxAmount = dict["PretaxAmount"] as! Double
                    }
                    if dict.keys.contains("PretaxAmountLocal") {
                        self.pretaxAmountLocal = dict["PretaxAmountLocal"] as! Double
                    }
                    if dict.keys.contains("PretaxGrossAmount") {
                        self.pretaxGrossAmount = dict["PretaxGrossAmount"] as! Double
                    }
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! String
                    }
                    if dict.keys.contains("ProductType") {
                        self.productType = dict["ProductType"] as! String
                    }
                    if dict.keys.contains("Region") {
                        self.region = dict["Region"] as! String
                    }
                    if dict.keys.contains("ResourceGroup") {
                        self.resourceGroup = dict["ResourceGroup"] as! String
                    }
                    if dict.keys.contains("SubscriptionType") {
                        self.subscriptionType = dict["SubscriptionType"] as! String
                    }
                    if dict.keys.contains("Tag") {
                        self.tag = dict["Tag"] as! String
                    }
                    if dict.keys.contains("Tax") {
                        self.tax = dict["Tax"] as! Double
                    }
                }
            }
            public var item: [QueryMonthlyInstanceConsumptionResponseBody.Data.Items.Item]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.item != nil {
                    var tmp : [Any] = []
                    for k in self.item! {
                        tmp.append(k.toMap())
                    }
                    map["Item"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Item") {
                    self.item = dict["Item"] as! [QueryMonthlyInstanceConsumptionResponseBody.Data.Items.Item]
                }
            }
        }
        public var billingCycle: String?

        public var items: QueryMonthlyInstanceConsumptionResponseBody.Data.Items?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.items?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billingCycle != nil {
                map["BillingCycle"] = self.billingCycle!
            }
            if self.items != nil {
                map["Items"] = self.items?.toMap()
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BillingCycle") {
                self.billingCycle = dict["BillingCycle"] as! String
            }
            if dict.keys.contains("Items") {
                var model = QueryMonthlyInstanceConsumptionResponseBody.Data.Items()
                model.fromMap(dict["Items"] as! [String: Any])
                self.items = model
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QueryMonthlyInstanceConsumptionResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryMonthlyInstanceConsumptionResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryMonthlyInstanceConsumptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMonthlyInstanceConsumptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryMonthlyInstanceConsumptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryOrdersRequest : Tea.TeaModel {
    public var createTimeEnd: String?

    public var createTimeStart: String?

    public var orderType: String?

    public var ownerId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var paymentStatus: String?

    public var productCode: String?

    public var productType: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.paymentStatus != nil {
            map["PaymentStatus"] = self.paymentStatus!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTimeEnd") {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateTimeStart") {
            self.createTimeStart = dict["CreateTimeStart"] as! String
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PaymentStatus") {
            self.paymentStatus = dict["PaymentStatus"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class QueryOrdersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class OrderList : Tea.TeaModel {
            public class Order : Tea.TeaModel {
                public var afterTaxAmount: String?

                public var commodityCode: String?

                public var createTime: String?

                public var currency: String?

                public var orderId: String?

                public var orderType: String?

                public var paymentCurrency: String?

                public var paymentStatus: String?

                public var paymentTime: String?

                public var pretaxAmount: String?

                public var pretaxAmountLocal: String?

                public var pretaxGrossAmount: String?

                public var productCode: String?

                public var productType: String?

                public var relatedOrderId: String?

                public var subscriptionType: String?

                public var tax: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.afterTaxAmount != nil {
                        map["AfterTaxAmount"] = self.afterTaxAmount!
                    }
                    if self.commodityCode != nil {
                        map["CommodityCode"] = self.commodityCode!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.currency != nil {
                        map["Currency"] = self.currency!
                    }
                    if self.orderId != nil {
                        map["OrderId"] = self.orderId!
                    }
                    if self.orderType != nil {
                        map["OrderType"] = self.orderType!
                    }
                    if self.paymentCurrency != nil {
                        map["PaymentCurrency"] = self.paymentCurrency!
                    }
                    if self.paymentStatus != nil {
                        map["PaymentStatus"] = self.paymentStatus!
                    }
                    if self.paymentTime != nil {
                        map["PaymentTime"] = self.paymentTime!
                    }
                    if self.pretaxAmount != nil {
                        map["PretaxAmount"] = self.pretaxAmount!
                    }
                    if self.pretaxAmountLocal != nil {
                        map["PretaxAmountLocal"] = self.pretaxAmountLocal!
                    }
                    if self.pretaxGrossAmount != nil {
                        map["PretaxGrossAmount"] = self.pretaxGrossAmount!
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    if self.productType != nil {
                        map["ProductType"] = self.productType!
                    }
                    if self.relatedOrderId != nil {
                        map["RelatedOrderId"] = self.relatedOrderId!
                    }
                    if self.subscriptionType != nil {
                        map["SubscriptionType"] = self.subscriptionType!
                    }
                    if self.tax != nil {
                        map["Tax"] = self.tax!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AfterTaxAmount") {
                        self.afterTaxAmount = dict["AfterTaxAmount"] as! String
                    }
                    if dict.keys.contains("CommodityCode") {
                        self.commodityCode = dict["CommodityCode"] as! String
                    }
                    if dict.keys.contains("CreateTime") {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Currency") {
                        self.currency = dict["Currency"] as! String
                    }
                    if dict.keys.contains("OrderId") {
                        self.orderId = dict["OrderId"] as! String
                    }
                    if dict.keys.contains("OrderType") {
                        self.orderType = dict["OrderType"] as! String
                    }
                    if dict.keys.contains("PaymentCurrency") {
                        self.paymentCurrency = dict["PaymentCurrency"] as! String
                    }
                    if dict.keys.contains("PaymentStatus") {
                        self.paymentStatus = dict["PaymentStatus"] as! String
                    }
                    if dict.keys.contains("PaymentTime") {
                        self.paymentTime = dict["PaymentTime"] as! String
                    }
                    if dict.keys.contains("PretaxAmount") {
                        self.pretaxAmount = dict["PretaxAmount"] as! String
                    }
                    if dict.keys.contains("PretaxAmountLocal") {
                        self.pretaxAmountLocal = dict["PretaxAmountLocal"] as! String
                    }
                    if dict.keys.contains("PretaxGrossAmount") {
                        self.pretaxGrossAmount = dict["PretaxGrossAmount"] as! String
                    }
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! String
                    }
                    if dict.keys.contains("ProductType") {
                        self.productType = dict["ProductType"] as! String
                    }
                    if dict.keys.contains("RelatedOrderId") {
                        self.relatedOrderId = dict["RelatedOrderId"] as! String
                    }
                    if dict.keys.contains("SubscriptionType") {
                        self.subscriptionType = dict["SubscriptionType"] as! String
                    }
                    if dict.keys.contains("Tax") {
                        self.tax = dict["Tax"] as! String
                    }
                }
            }
            public var order: [QueryOrdersResponseBody.Data.OrderList.Order]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.order != nil {
                    var tmp : [Any] = []
                    for k in self.order! {
                        tmp.append(k.toMap())
                    }
                    map["Order"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Order") {
                    self.order = dict["Order"] as! [QueryOrdersResponseBody.Data.OrderList.Order]
                }
            }
        }
        public var hostName: String?

        public var orderList: QueryOrdersResponseBody.Data.OrderList?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.orderList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.orderList != nil {
                map["OrderList"] = self.orderList?.toMap()
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostName") {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("OrderList") {
                var model = QueryOrdersResponseBody.Data.OrderList()
                model.fromMap(dict["OrderList"] as! [String: Any])
                self.orderList = model
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QueryOrdersResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryOrdersResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryOrdersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryOrdersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPermissionListRequest : Tea.TeaModel {
    public var relationId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.relationId != nil {
            map["RelationId"] = self.relationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RelationId") {
            self.relationId = dict["RelationId"] as! Int64
        }
    }
}

public class QueryPermissionListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PermissionList : Tea.TeaModel {
            public var endTime: String?

            public var permissionCode: String?

            public var permissionName: String?

            public var startTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.permissionCode != nil {
                    map["PermissionCode"] = self.permissionCode!
                }
                if self.permissionName != nil {
                    map["PermissionName"] = self.permissionName!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("PermissionCode") {
                    self.permissionCode = dict["PermissionCode"] as! String
                }
                if dict.keys.contains("PermissionName") {
                    self.permissionName = dict["PermissionName"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
            }
        }
        public var endTime: String?

        public var masterId: Int64?

        public var memberId: Int64?

        public var permissionList: [QueryPermissionListResponseBody.Data.PermissionList]?

        public var relationType: String?

        public var setupTime: String?

        public var startTime: String?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.masterId != nil {
                map["MasterId"] = self.masterId!
            }
            if self.memberId != nil {
                map["MemberId"] = self.memberId!
            }
            if self.permissionList != nil {
                var tmp : [Any] = []
                for k in self.permissionList! {
                    tmp.append(k.toMap())
                }
                map["PermissionList"] = tmp
            }
            if self.relationType != nil {
                map["RelationType"] = self.relationType!
            }
            if self.setupTime != nil {
                map["SetupTime"] = self.setupTime!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("MasterId") {
                self.masterId = dict["MasterId"] as! Int64
            }
            if dict.keys.contains("MemberId") {
                self.memberId = dict["MemberId"] as! Int64
            }
            if dict.keys.contains("PermissionList") {
                self.permissionList = dict["PermissionList"] as! [QueryPermissionListResponseBody.Data.PermissionList]
            }
            if dict.keys.contains("RelationType") {
                self.relationType = dict["RelationType"] as! String
            }
            if dict.keys.contains("SetupTime") {
                self.setupTime = dict["SetupTime"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryPermissionListResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryPermissionListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryPermissionListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPermissionListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryPermissionListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPrepaidCardsRequest : Tea.TeaModel {
    public var effectiveOrNot: Bool?

    public var expiryTimeEnd: String?

    public var expiryTimeStart: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.effectiveOrNot != nil {
            map["EffectiveOrNot"] = self.effectiveOrNot!
        }
        if self.expiryTimeEnd != nil {
            map["ExpiryTimeEnd"] = self.expiryTimeEnd!
        }
        if self.expiryTimeStart != nil {
            map["ExpiryTimeStart"] = self.expiryTimeStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EffectiveOrNot") {
            self.effectiveOrNot = dict["EffectiveOrNot"] as! Bool
        }
        if dict.keys.contains("ExpiryTimeEnd") {
            self.expiryTimeEnd = dict["ExpiryTimeEnd"] as! String
        }
        if dict.keys.contains("ExpiryTimeStart") {
            self.expiryTimeStart = dict["ExpiryTimeStart"] as! String
        }
    }
}

public class QueryPrepaidCardsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PrepaidCard : Tea.TeaModel {
            public var applicableProducts: String?

            public var applicableScenarios: String?

            public var balance: String?

            public var effectiveTime: String?

            public var expiryTime: String?

            public var grantedTime: String?

            public var nominalValue: String?

            public var prepaidCardId: Int64?

            public var prepaidCardNo: String?

            public var status: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applicableProducts != nil {
                    map["ApplicableProducts"] = self.applicableProducts!
                }
                if self.applicableScenarios != nil {
                    map["ApplicableScenarios"] = self.applicableScenarios!
                }
                if self.balance != nil {
                    map["Balance"] = self.balance!
                }
                if self.effectiveTime != nil {
                    map["EffectiveTime"] = self.effectiveTime!
                }
                if self.expiryTime != nil {
                    map["ExpiryTime"] = self.expiryTime!
                }
                if self.grantedTime != nil {
                    map["GrantedTime"] = self.grantedTime!
                }
                if self.nominalValue != nil {
                    map["NominalValue"] = self.nominalValue!
                }
                if self.prepaidCardId != nil {
                    map["PrepaidCardId"] = self.prepaidCardId!
                }
                if self.prepaidCardNo != nil {
                    map["PrepaidCardNo"] = self.prepaidCardNo!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApplicableProducts") {
                    self.applicableProducts = dict["ApplicableProducts"] as! String
                }
                if dict.keys.contains("ApplicableScenarios") {
                    self.applicableScenarios = dict["ApplicableScenarios"] as! String
                }
                if dict.keys.contains("Balance") {
                    self.balance = dict["Balance"] as! String
                }
                if dict.keys.contains("EffectiveTime") {
                    self.effectiveTime = dict["EffectiveTime"] as! String
                }
                if dict.keys.contains("ExpiryTime") {
                    self.expiryTime = dict["ExpiryTime"] as! String
                }
                if dict.keys.contains("GrantedTime") {
                    self.grantedTime = dict["GrantedTime"] as! String
                }
                if dict.keys.contains("NominalValue") {
                    self.nominalValue = dict["NominalValue"] as! String
                }
                if dict.keys.contains("PrepaidCardId") {
                    self.prepaidCardId = dict["PrepaidCardId"] as! Int64
                }
                if dict.keys.contains("PrepaidCardNo") {
                    self.prepaidCardNo = dict["PrepaidCardNo"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var prepaidCard: [QueryPrepaidCardsResponseBody.Data.PrepaidCard]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.prepaidCard != nil {
                var tmp : [Any] = []
                for k in self.prepaidCard! {
                    tmp.append(k.toMap())
                }
                map["PrepaidCard"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PrepaidCard") {
                self.prepaidCard = dict["PrepaidCard"] as! [QueryPrepaidCardsResponseBody.Data.PrepaidCard]
            }
        }
    }
    public var code: String?

    public var data: QueryPrepaidCardsResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryPrepaidCardsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryPrepaidCardsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPrepaidCardsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryPrepaidCardsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryProductListRequest : Tea.TeaModel {
    public var pageNum: Int32?

    public var pageSize: Int32?

    public var queryTotalCount: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryTotalCount != nil {
            map["QueryTotalCount"] = self.queryTotalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryTotalCount") {
            self.queryTotalCount = dict["QueryTotalCount"] as! Bool
        }
    }
}

public class QueryProductListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ProductList : Tea.TeaModel {
            public class Product : Tea.TeaModel {
                public var productCode: String?

                public var productName: String?

                public var productType: String?

                public var subscriptionType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    if self.productName != nil {
                        map["ProductName"] = self.productName!
                    }
                    if self.productType != nil {
                        map["ProductType"] = self.productType!
                    }
                    if self.subscriptionType != nil {
                        map["SubscriptionType"] = self.subscriptionType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! String
                    }
                    if dict.keys.contains("ProductName") {
                        self.productName = dict["ProductName"] as! String
                    }
                    if dict.keys.contains("ProductType") {
                        self.productType = dict["ProductType"] as! String
                    }
                    if dict.keys.contains("SubscriptionType") {
                        self.subscriptionType = dict["SubscriptionType"] as! String
                    }
                }
            }
            public var product: [QueryProductListResponseBody.Data.ProductList.Product]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.product != nil {
                    var tmp : [Any] = []
                    for k in self.product! {
                        tmp.append(k.toMap())
                    }
                    map["Product"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Product") {
                    self.product = dict["Product"] as! [QueryProductListResponseBody.Data.ProductList.Product]
                }
            }
        }
        public var pageNum: Int32?

        public var pageSize: Int32?

        public var productList: QueryProductListResponseBody.Data.ProductList?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.productList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.productList != nil {
                map["ProductList"] = self.productList?.toMap()
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("ProductList") {
                var model = QueryProductListResponseBody.Data.ProductList()
                model.fromMap(dict["ProductList"] as! [String: Any])
                self.productList = model
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QueryProductListResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryProductListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryProductListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryProductListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryProductListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRIUtilizationDetailRequest : Tea.TeaModel {
    public var deductedInstanceId: String?

    public var endTime: String?

    public var instanceSpec: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var RICommodityCode: String?

    public var RIInstanceId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deductedInstanceId != nil {
            map["DeductedInstanceId"] = self.deductedInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceSpec != nil {
            map["InstanceSpec"] = self.instanceSpec!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.RICommodityCode != nil {
            map["RICommodityCode"] = self.RICommodityCode!
        }
        if self.RIInstanceId != nil {
            map["RIInstanceId"] = self.RIInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeductedInstanceId") {
            self.deductedInstanceId = dict["DeductedInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceSpec") {
            self.instanceSpec = dict["InstanceSpec"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RICommodityCode") {
            self.RICommodityCode = dict["RICommodityCode"] as! String
        }
        if dict.keys.contains("RIInstanceId") {
            self.RIInstanceId = dict["RIInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class QueryRIUtilizationDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DetailList : Tea.TeaModel {
            public class DetailList : Tea.TeaModel {
                public var deductDate: String?

                public var deductFactorTotal: Double?

                public var deductHours: String?

                public var deductQuantity: Double?

                public var deductedCommodityCode: String?

                public var deductedInstanceId: String?

                public var deductedProductDetail: String?

                public var instanceSpec: String?

                public var RIInstanceId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.deductDate != nil {
                        map["DeductDate"] = self.deductDate!
                    }
                    if self.deductFactorTotal != nil {
                        map["DeductFactorTotal"] = self.deductFactorTotal!
                    }
                    if self.deductHours != nil {
                        map["DeductHours"] = self.deductHours!
                    }
                    if self.deductQuantity != nil {
                        map["DeductQuantity"] = self.deductQuantity!
                    }
                    if self.deductedCommodityCode != nil {
                        map["DeductedCommodityCode"] = self.deductedCommodityCode!
                    }
                    if self.deductedInstanceId != nil {
                        map["DeductedInstanceId"] = self.deductedInstanceId!
                    }
                    if self.deductedProductDetail != nil {
                        map["DeductedProductDetail"] = self.deductedProductDetail!
                    }
                    if self.instanceSpec != nil {
                        map["InstanceSpec"] = self.instanceSpec!
                    }
                    if self.RIInstanceId != nil {
                        map["RIInstanceId"] = self.RIInstanceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DeductDate") {
                        self.deductDate = dict["DeductDate"] as! String
                    }
                    if dict.keys.contains("DeductFactorTotal") {
                        self.deductFactorTotal = dict["DeductFactorTotal"] as! Double
                    }
                    if dict.keys.contains("DeductHours") {
                        self.deductHours = dict["DeductHours"] as! String
                    }
                    if dict.keys.contains("DeductQuantity") {
                        self.deductQuantity = dict["DeductQuantity"] as! Double
                    }
                    if dict.keys.contains("DeductedCommodityCode") {
                        self.deductedCommodityCode = dict["DeductedCommodityCode"] as! String
                    }
                    if dict.keys.contains("DeductedInstanceId") {
                        self.deductedInstanceId = dict["DeductedInstanceId"] as! String
                    }
                    if dict.keys.contains("DeductedProductDetail") {
                        self.deductedProductDetail = dict["DeductedProductDetail"] as! String
                    }
                    if dict.keys.contains("InstanceSpec") {
                        self.instanceSpec = dict["InstanceSpec"] as! String
                    }
                    if dict.keys.contains("RIInstanceId") {
                        self.RIInstanceId = dict["RIInstanceId"] as! String
                    }
                }
            }
            public var detailList: [QueryRIUtilizationDetailResponseBody.Data.DetailList.DetailList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.detailList != nil {
                    var tmp : [Any] = []
                    for k in self.detailList! {
                        tmp.append(k.toMap())
                    }
                    map["DetailList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DetailList") {
                    self.detailList = dict["DetailList"] as! [QueryRIUtilizationDetailResponseBody.Data.DetailList.DetailList]
                }
            }
        }
        public var detailList: QueryRIUtilizationDetailResponseBody.Data.DetailList?

        public var pageNum: Int64?

        public var pageSize: Int64?

        public var totalCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.detailList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detailList != nil {
                map["DetailList"] = self.detailList?.toMap()
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DetailList") {
                var model = QueryRIUtilizationDetailResponseBody.Data.DetailList()
                model.fromMap(dict["DetailList"] as! [String: Any])
                self.detailList = model
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: QueryRIUtilizationDetailResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryRIUtilizationDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryRIUtilizationDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRIUtilizationDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryRIUtilizationDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRedeemRequest : Tea.TeaModel {
    public var effectiveOrNot: Bool?

    public var expiryTimeEnd: String?

    public var expiryTimeStart: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.effectiveOrNot != nil {
            map["EffectiveOrNot"] = self.effectiveOrNot!
        }
        if self.expiryTimeEnd != nil {
            map["ExpiryTimeEnd"] = self.expiryTimeEnd!
        }
        if self.expiryTimeStart != nil {
            map["ExpiryTimeStart"] = self.expiryTimeStart!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EffectiveOrNot") {
            self.effectiveOrNot = dict["EffectiveOrNot"] as! Bool
        }
        if dict.keys.contains("ExpiryTimeEnd") {
            self.expiryTimeEnd = dict["ExpiryTimeEnd"] as! String
        }
        if dict.keys.contains("ExpiryTimeStart") {
            self.expiryTimeStart = dict["ExpiryTimeStart"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class QueryRedeemResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Redeem : Tea.TeaModel {
            public class Redeem : Tea.TeaModel {
                public var applicableProducts: String?

                public var balance: String?

                public var effectiveTime: String?

                public var expiryTime: String?

                public var grantedTime: String?

                public var nominalValue: String?

                public var redeemId: String?

                public var redeemNo: String?

                public var specification: String?

                public var status: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.applicableProducts != nil {
                        map["ApplicableProducts"] = self.applicableProducts!
                    }
                    if self.balance != nil {
                        map["Balance"] = self.balance!
                    }
                    if self.effectiveTime != nil {
                        map["EffectiveTime"] = self.effectiveTime!
                    }
                    if self.expiryTime != nil {
                        map["ExpiryTime"] = self.expiryTime!
                    }
                    if self.grantedTime != nil {
                        map["GrantedTime"] = self.grantedTime!
                    }
                    if self.nominalValue != nil {
                        map["NominalValue"] = self.nominalValue!
                    }
                    if self.redeemId != nil {
                        map["RedeemId"] = self.redeemId!
                    }
                    if self.redeemNo != nil {
                        map["RedeemNo"] = self.redeemNo!
                    }
                    if self.specification != nil {
                        map["Specification"] = self.specification!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ApplicableProducts") {
                        self.applicableProducts = dict["ApplicableProducts"] as! String
                    }
                    if dict.keys.contains("Balance") {
                        self.balance = dict["Balance"] as! String
                    }
                    if dict.keys.contains("EffectiveTime") {
                        self.effectiveTime = dict["EffectiveTime"] as! String
                    }
                    if dict.keys.contains("ExpiryTime") {
                        self.expiryTime = dict["ExpiryTime"] as! String
                    }
                    if dict.keys.contains("GrantedTime") {
                        self.grantedTime = dict["GrantedTime"] as! String
                    }
                    if dict.keys.contains("NominalValue") {
                        self.nominalValue = dict["NominalValue"] as! String
                    }
                    if dict.keys.contains("RedeemId") {
                        self.redeemId = dict["RedeemId"] as! String
                    }
                    if dict.keys.contains("RedeemNo") {
                        self.redeemNo = dict["RedeemNo"] as! String
                    }
                    if dict.keys.contains("Specification") {
                        self.specification = dict["Specification"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
                    }
                }
            }
            public var redeem: [QueryRedeemResponseBody.Data.Redeem.Redeem]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.redeem != nil {
                    var tmp : [Any] = []
                    for k in self.redeem! {
                        tmp.append(k.toMap())
                    }
                    map["Redeem"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Redeem") {
                    self.redeem = dict["Redeem"] as! [QueryRedeemResponseBody.Data.Redeem.Redeem]
                }
            }
        }
        public var pageNum: Int64?

        public var pageSize: Int64?

        public var redeem: QueryRedeemResponseBody.Data.Redeem?

        public var totalCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.redeem?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.redeem != nil {
                map["Redeem"] = self.redeem?.toMap()
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("Redeem") {
                var model = QueryRedeemResponseBody.Data.Redeem()
                model.fromMap(dict["Redeem"] as! [String: Any])
                self.redeem = model
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: QueryRedeemResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryRedeemResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryRedeemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRedeemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryRedeemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRelationListRequest : Tea.TeaModel {
    public var pageNum: Int32?

    public var pageSize: Int32?

    public var statusList: [String]?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.statusList != nil {
            map["StatusList"] = self.statusList!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StatusList") {
            self.statusList = dict["StatusList"] as! [String]
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! Int64
        }
    }
}

public class QueryRelationListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FinancialRelationInfoList : Tea.TeaModel {
            public var accountId: Int64?

            public var accountName: String?

            public var accountNickName: String?

            public var accountType: String?

            public var endTime: String?

            public var relationId: Int64?

            public var relationType: String?

            public var setupTime: String?

            public var startTime: String?

            public var state: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.accountName != nil {
                    map["AccountName"] = self.accountName!
                }
                if self.accountNickName != nil {
                    map["AccountNickName"] = self.accountNickName!
                }
                if self.accountType != nil {
                    map["AccountType"] = self.accountType!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.relationId != nil {
                    map["RelationId"] = self.relationId!
                }
                if self.relationType != nil {
                    map["RelationType"] = self.relationType!
                }
                if self.setupTime != nil {
                    map["SetupTime"] = self.setupTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! Int64
                }
                if dict.keys.contains("AccountName") {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("AccountNickName") {
                    self.accountNickName = dict["AccountNickName"] as! String
                }
                if dict.keys.contains("AccountType") {
                    self.accountType = dict["AccountType"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("RelationId") {
                    self.relationId = dict["RelationId"] as! Int64
                }
                if dict.keys.contains("RelationType") {
                    self.relationType = dict["RelationType"] as! String
                }
                if dict.keys.contains("SetupTime") {
                    self.setupTime = dict["SetupTime"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("State") {
                    self.state = dict["State"] as! String
                }
            }
        }
        public var financialRelationInfoList: [QueryRelationListResponseBody.Data.FinancialRelationInfoList]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.financialRelationInfoList != nil {
                var tmp : [Any] = []
                for k in self.financialRelationInfoList! {
                    tmp.append(k.toMap())
                }
                map["FinancialRelationInfoList"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FinancialRelationInfoList") {
                self.financialRelationInfoList = dict["FinancialRelationInfoList"] as! [QueryRelationListResponseBody.Data.FinancialRelationInfoList]
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QueryRelationListResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryRelationListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryRelationListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRelationListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryRelationListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryResellerAvailableQuotaRequest : Tea.TeaModel {
    public var itemCodes: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.itemCodes != nil {
            map["ItemCodes"] = self.itemCodes!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ItemCodes") {
            self.itemCodes = dict["ItemCodes"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class QueryResellerAvailableQuotaResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryResellerAvailableQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryResellerAvailableQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryResellerAvailableQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryResourcePackageInstancesRequest : Tea.TeaModel {
    public var expiryTimeEnd: String?

    public var expiryTimeStart: String?

    public var includePartner: Bool?

    public var ownerId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expiryTimeEnd != nil {
            map["ExpiryTimeEnd"] = self.expiryTimeEnd!
        }
        if self.expiryTimeStart != nil {
            map["ExpiryTimeStart"] = self.expiryTimeStart!
        }
        if self.includePartner != nil {
            map["IncludePartner"] = self.includePartner!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpiryTimeEnd") {
            self.expiryTimeEnd = dict["ExpiryTimeEnd"] as! String
        }
        if dict.keys.contains("ExpiryTimeStart") {
            self.expiryTimeStart = dict["ExpiryTimeStart"] as! String
        }
        if dict.keys.contains("IncludePartner") {
            self.includePartner = dict["IncludePartner"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
    }
}

public class QueryResourcePackageInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Instances : Tea.TeaModel {
            public class Instance : Tea.TeaModel {
                public class ApplicableProducts : Tea.TeaModel {
                    public var product: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.product != nil {
                            map["Product"] = self.product!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Product") {
                            self.product = dict["Product"] as! [String]
                        }
                    }
                }
                public var applicableProducts: QueryResourcePackageInstancesResponseBody.Data.Instances.Instance.ApplicableProducts?

                public var commodityCode: String?

                public var deductType: String?

                public var effectiveTime: String?

                public var expiryTime: String?

                public var instanceId: String?

                public var packageType: String?

                public var region: String?

                public var remainingAmount: String?

                public var remainingAmountUnit: String?

                public var remark: String?

                public var status: String?

                public var totalAmount: String?

                public var totalAmountUnit: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.applicableProducts?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.applicableProducts != nil {
                        map["ApplicableProducts"] = self.applicableProducts?.toMap()
                    }
                    if self.commodityCode != nil {
                        map["CommodityCode"] = self.commodityCode!
                    }
                    if self.deductType != nil {
                        map["DeductType"] = self.deductType!
                    }
                    if self.effectiveTime != nil {
                        map["EffectiveTime"] = self.effectiveTime!
                    }
                    if self.expiryTime != nil {
                        map["ExpiryTime"] = self.expiryTime!
                    }
                    if self.instanceId != nil {
                        map["InstanceId"] = self.instanceId!
                    }
                    if self.packageType != nil {
                        map["PackageType"] = self.packageType!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.remainingAmount != nil {
                        map["RemainingAmount"] = self.remainingAmount!
                    }
                    if self.remainingAmountUnit != nil {
                        map["RemainingAmountUnit"] = self.remainingAmountUnit!
                    }
                    if self.remark != nil {
                        map["Remark"] = self.remark!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.totalAmount != nil {
                        map["TotalAmount"] = self.totalAmount!
                    }
                    if self.totalAmountUnit != nil {
                        map["TotalAmountUnit"] = self.totalAmountUnit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ApplicableProducts") {
                        var model = QueryResourcePackageInstancesResponseBody.Data.Instances.Instance.ApplicableProducts()
                        model.fromMap(dict["ApplicableProducts"] as! [String: Any])
                        self.applicableProducts = model
                    }
                    if dict.keys.contains("CommodityCode") {
                        self.commodityCode = dict["CommodityCode"] as! String
                    }
                    if dict.keys.contains("DeductType") {
                        self.deductType = dict["DeductType"] as! String
                    }
                    if dict.keys.contains("EffectiveTime") {
                        self.effectiveTime = dict["EffectiveTime"] as! String
                    }
                    if dict.keys.contains("ExpiryTime") {
                        self.expiryTime = dict["ExpiryTime"] as! String
                    }
                    if dict.keys.contains("InstanceId") {
                        self.instanceId = dict["InstanceId"] as! String
                    }
                    if dict.keys.contains("PackageType") {
                        self.packageType = dict["PackageType"] as! String
                    }
                    if dict.keys.contains("Region") {
                        self.region = dict["Region"] as! String
                    }
                    if dict.keys.contains("RemainingAmount") {
                        self.remainingAmount = dict["RemainingAmount"] as! String
                    }
                    if dict.keys.contains("RemainingAmountUnit") {
                        self.remainingAmountUnit = dict["RemainingAmountUnit"] as! String
                    }
                    if dict.keys.contains("Remark") {
                        self.remark = dict["Remark"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("TotalAmount") {
                        self.totalAmount = dict["TotalAmount"] as! String
                    }
                    if dict.keys.contains("TotalAmountUnit") {
                        self.totalAmountUnit = dict["TotalAmountUnit"] as! String
                    }
                }
            }
            public var instance: [QueryResourcePackageInstancesResponseBody.Data.Instances.Instance]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instance != nil {
                    var tmp : [Any] = []
                    for k in self.instance! {
                        tmp.append(k.toMap())
                    }
                    map["Instance"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Instance") {
                    self.instance = dict["Instance"] as! [QueryResourcePackageInstancesResponseBody.Data.Instances.Instance]
                }
            }
        }
        public var hostId: String?

        public var instances: QueryResourcePackageInstancesResponseBody.Data.Instances?

        public var pageNum: String?

        public var pageSize: String?

        public var totalCount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.instances?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.instances != nil {
                map["Instances"] = self.instances?.toMap()
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostId") {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("Instances") {
                var model = QueryResourcePackageInstancesResponseBody.Data.Instances()
                model.fromMap(dict["Instances"] as! [String: Any])
                self.instances = model
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! String
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryResourcePackageInstancesResponseBody.Data?

    public var message: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryResourcePackageInstancesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class QueryResourcePackageInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryResourcePackageInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryResourcePackageInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySavingsPlansDeductLogRequest : Tea.TeaModel {
    public var endTime: String?

    public var instanceId: String?

    public var instanceType: String?

    public var locale: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.locale != nil {
            map["Locale"] = self.locale!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("Locale") {
            self.locale = dict["Locale"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class QuerySavingsPlansDeductLogResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var billModule: String?

            public var deductCommodity: String?

            public var deductFee: String?

            public var deductInstanceId: String?

            public var deductRate: String?

            public var discountRate: String?

            public var endTime: String?

            public var instanceId: String?

            public var ownerId: Int64?

            public var savingsType: String?

            public var startTime: String?

            public var userId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.billModule != nil {
                    map["BillModule"] = self.billModule!
                }
                if self.deductCommodity != nil {
                    map["DeductCommodity"] = self.deductCommodity!
                }
                if self.deductFee != nil {
                    map["DeductFee"] = self.deductFee!
                }
                if self.deductInstanceId != nil {
                    map["DeductInstanceId"] = self.deductInstanceId!
                }
                if self.deductRate != nil {
                    map["DeductRate"] = self.deductRate!
                }
                if self.discountRate != nil {
                    map["DiscountRate"] = self.discountRate!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.savingsType != nil {
                    map["SavingsType"] = self.savingsType!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BillModule") {
                    self.billModule = dict["BillModule"] as! String
                }
                if dict.keys.contains("DeductCommodity") {
                    self.deductCommodity = dict["DeductCommodity"] as! String
                }
                if dict.keys.contains("DeductFee") {
                    self.deductFee = dict["DeductFee"] as! String
                }
                if dict.keys.contains("DeductInstanceId") {
                    self.deductInstanceId = dict["DeductInstanceId"] as! String
                }
                if dict.keys.contains("DeductRate") {
                    self.deductRate = dict["DeductRate"] as! String
                }
                if dict.keys.contains("DiscountRate") {
                    self.discountRate = dict["DiscountRate"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! Int64
                }
                if dict.keys.contains("SavingsType") {
                    self.savingsType = dict["SavingsType"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! Int64
                }
            }
        }
        public var items: [QuerySavingsPlansDeductLogResponseBody.Data.Items]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [QuerySavingsPlansDeductLogResponseBody.Data.Items]
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QuerySavingsPlansDeductLogResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QuerySavingsPlansDeductLogResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QuerySavingsPlansDeductLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySavingsPlansDeductLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QuerySavingsPlansDeductLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySavingsPlansInstanceRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var endTime: String?

    public var instanceId: String?

    public var locale: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public var tag: [QuerySavingsPlansInstanceRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.locale != nil {
            map["Locale"] = self.locale!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Locale") {
            self.locale = dict["Locale"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [QuerySavingsPlansInstanceRequest.Tag]
        }
    }
}

public class QuerySavingsPlansInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public var key: String?

                public var value: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var allocationStatus: String?

            public var currency: String?

            public var cycle: String?

            public var endTime: String?

            public var endTimestamp: Int64?

            public var instanceFamily: String?

            public var instanceId: String?

            public var lastBillTotalUsage: String?

            public var lastBillUtilization: String?

            public var payMode: String?

            public var poolValue: String?

            public var prepayFee: String?

            public var region: String?

            public var savingsType: String?

            public var startTime: String?

            public var startTimestamp: Int64?

            public var status: String?

            public var tags: [QuerySavingsPlansInstanceResponseBody.Data.Items.Tags]?

            public var totalSave: String?

            public var utilization: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allocationStatus != nil {
                    map["AllocationStatus"] = self.allocationStatus!
                }
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.cycle != nil {
                    map["Cycle"] = self.cycle!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.endTimestamp != nil {
                    map["EndTimestamp"] = self.endTimestamp!
                }
                if self.instanceFamily != nil {
                    map["InstanceFamily"] = self.instanceFamily!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.lastBillTotalUsage != nil {
                    map["LastBillTotalUsage"] = self.lastBillTotalUsage!
                }
                if self.lastBillUtilization != nil {
                    map["LastBillUtilization"] = self.lastBillUtilization!
                }
                if self.payMode != nil {
                    map["PayMode"] = self.payMode!
                }
                if self.poolValue != nil {
                    map["PoolValue"] = self.poolValue!
                }
                if self.prepayFee != nil {
                    map["PrepayFee"] = self.prepayFee!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.savingsType != nil {
                    map["SavingsType"] = self.savingsType!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.startTimestamp != nil {
                    map["StartTimestamp"] = self.startTimestamp!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.totalSave != nil {
                    map["TotalSave"] = self.totalSave!
                }
                if self.utilization != nil {
                    map["Utilization"] = self.utilization!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllocationStatus") {
                    self.allocationStatus = dict["AllocationStatus"] as! String
                }
                if dict.keys.contains("Currency") {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("Cycle") {
                    self.cycle = dict["Cycle"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("EndTimestamp") {
                    self.endTimestamp = dict["EndTimestamp"] as! Int64
                }
                if dict.keys.contains("InstanceFamily") {
                    self.instanceFamily = dict["InstanceFamily"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("LastBillTotalUsage") {
                    self.lastBillTotalUsage = dict["LastBillTotalUsage"] as! String
                }
                if dict.keys.contains("LastBillUtilization") {
                    self.lastBillUtilization = dict["LastBillUtilization"] as! String
                }
                if dict.keys.contains("PayMode") {
                    self.payMode = dict["PayMode"] as! String
                }
                if dict.keys.contains("PoolValue") {
                    self.poolValue = dict["PoolValue"] as! String
                }
                if dict.keys.contains("PrepayFee") {
                    self.prepayFee = dict["PrepayFee"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("SavingsType") {
                    self.savingsType = dict["SavingsType"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("StartTimestamp") {
                    self.startTimestamp = dict["StartTimestamp"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! [QuerySavingsPlansInstanceResponseBody.Data.Items.Tags]
                }
                if dict.keys.contains("TotalSave") {
                    self.totalSave = dict["TotalSave"] as! String
                }
                if dict.keys.contains("Utilization") {
                    self.utilization = dict["Utilization"] as! String
                }
            }
        }
        public var items: [QuerySavingsPlansInstanceResponseBody.Data.Items]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [QuerySavingsPlansInstanceResponseBody.Data.Items]
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QuerySavingsPlansInstanceResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QuerySavingsPlansInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QuerySavingsPlansInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySavingsPlansInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QuerySavingsPlansInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySettleBillRequest : Tea.TeaModel {
    public var billOwnerId: Int64?

    public var billingCycle: String?

    public var isDisplayLocalCurrency: Bool?

    public var isHideZeroCharge: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerId: Int64?

    public var productCode: String?

    public var productType: String?

    public var recordID: String?

    public var subscriptionType: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwnerId != nil {
            map["BillOwnerId"] = self.billOwnerId!
        }
        if self.billingCycle != nil {
            map["BillingCycle"] = self.billingCycle!
        }
        if self.isDisplayLocalCurrency != nil {
            map["IsDisplayLocalCurrency"] = self.isDisplayLocalCurrency!
        }
        if self.isHideZeroCharge != nil {
            map["IsHideZeroCharge"] = self.isHideZeroCharge!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.recordID != nil {
            map["RecordID"] = self.recordID!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwnerId") {
            self.billOwnerId = dict["BillOwnerId"] as! Int64
        }
        if dict.keys.contains("BillingCycle") {
            self.billingCycle = dict["BillingCycle"] as! String
        }
        if dict.keys.contains("IsDisplayLocalCurrency") {
            self.isDisplayLocalCurrency = dict["IsDisplayLocalCurrency"] as! Bool
        }
        if dict.keys.contains("IsHideZeroCharge") {
            self.isHideZeroCharge = dict["IsHideZeroCharge"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("RecordID") {
            self.recordID = dict["RecordID"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class QuerySettleBillResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Item : Tea.TeaModel {
                public var adjustAmount: Double?

                public var afterTaxAmount: Double?

                public var billAccountID: String?

                public var billAccountName: String?

                public var bizType: String?

                public var cashAmount: Double?

                public var commodityCode: String?

                public var currency: String?

                public var deductedByCashCoupons: Double?

                public var deductedByCoupons: Double?

                public var deductedByPrepaidCard: Double?

                public var invoiceDiscount: Double?

                public var item: String?

                public var outstandingAmount: Double?

                public var ownerID: String?

                public var paymentAmount: Double?

                public var paymentCurrency: String?

                public var paymentTime: String?

                public var paymentTransactionID: String?

                public var pipCode: String?

                public var pretaxAmount: Double?

                public var pretaxAmountLocal: Double?

                public var pretaxGrossAmount: Double?

                public var productCode: String?

                public var productDetail: String?

                public var productName: String?

                public var productType: String?

                public var recordID: String?

                public var roundDownDiscount: String?

                public var status: String?

                public var subOrderId: String?

                public var subscriptionType: String?

                public var tax: Double?

                public var usageEndTime: String?

                public var usageStartTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.adjustAmount != nil {
                        map["AdjustAmount"] = self.adjustAmount!
                    }
                    if self.afterTaxAmount != nil {
                        map["AfterTaxAmount"] = self.afterTaxAmount!
                    }
                    if self.billAccountID != nil {
                        map["BillAccountID"] = self.billAccountID!
                    }
                    if self.billAccountName != nil {
                        map["BillAccountName"] = self.billAccountName!
                    }
                    if self.bizType != nil {
                        map["BizType"] = self.bizType!
                    }
                    if self.cashAmount != nil {
                        map["CashAmount"] = self.cashAmount!
                    }
                    if self.commodityCode != nil {
                        map["CommodityCode"] = self.commodityCode!
                    }
                    if self.currency != nil {
                        map["Currency"] = self.currency!
                    }
                    if self.deductedByCashCoupons != nil {
                        map["DeductedByCashCoupons"] = self.deductedByCashCoupons!
                    }
                    if self.deductedByCoupons != nil {
                        map["DeductedByCoupons"] = self.deductedByCoupons!
                    }
                    if self.deductedByPrepaidCard != nil {
                        map["DeductedByPrepaidCard"] = self.deductedByPrepaidCard!
                    }
                    if self.invoiceDiscount != nil {
                        map["InvoiceDiscount"] = self.invoiceDiscount!
                    }
                    if self.item != nil {
                        map["Item"] = self.item!
                    }
                    if self.outstandingAmount != nil {
                        map["OutstandingAmount"] = self.outstandingAmount!
                    }
                    if self.ownerID != nil {
                        map["OwnerID"] = self.ownerID!
                    }
                    if self.paymentAmount != nil {
                        map["PaymentAmount"] = self.paymentAmount!
                    }
                    if self.paymentCurrency != nil {
                        map["PaymentCurrency"] = self.paymentCurrency!
                    }
                    if self.paymentTime != nil {
                        map["PaymentTime"] = self.paymentTime!
                    }
                    if self.paymentTransactionID != nil {
                        map["PaymentTransactionID"] = self.paymentTransactionID!
                    }
                    if self.pipCode != nil {
                        map["PipCode"] = self.pipCode!
                    }
                    if self.pretaxAmount != nil {
                        map["PretaxAmount"] = self.pretaxAmount!
                    }
                    if self.pretaxAmountLocal != nil {
                        map["PretaxAmountLocal"] = self.pretaxAmountLocal!
                    }
                    if self.pretaxGrossAmount != nil {
                        map["PretaxGrossAmount"] = self.pretaxGrossAmount!
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    if self.productDetail != nil {
                        map["ProductDetail"] = self.productDetail!
                    }
                    if self.productName != nil {
                        map["ProductName"] = self.productName!
                    }
                    if self.productType != nil {
                        map["ProductType"] = self.productType!
                    }
                    if self.recordID != nil {
                        map["RecordID"] = self.recordID!
                    }
                    if self.roundDownDiscount != nil {
                        map["RoundDownDiscount"] = self.roundDownDiscount!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.subOrderId != nil {
                        map["SubOrderId"] = self.subOrderId!
                    }
                    if self.subscriptionType != nil {
                        map["SubscriptionType"] = self.subscriptionType!
                    }
                    if self.tax != nil {
                        map["Tax"] = self.tax!
                    }
                    if self.usageEndTime != nil {
                        map["UsageEndTime"] = self.usageEndTime!
                    }
                    if self.usageStartTime != nil {
                        map["UsageStartTime"] = self.usageStartTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AdjustAmount") {
                        self.adjustAmount = dict["AdjustAmount"] as! Double
                    }
                    if dict.keys.contains("AfterTaxAmount") {
                        self.afterTaxAmount = dict["AfterTaxAmount"] as! Double
                    }
                    if dict.keys.contains("BillAccountID") {
                        self.billAccountID = dict["BillAccountID"] as! String
                    }
                    if dict.keys.contains("BillAccountName") {
                        self.billAccountName = dict["BillAccountName"] as! String
                    }
                    if dict.keys.contains("BizType") {
                        self.bizType = dict["BizType"] as! String
                    }
                    if dict.keys.contains("CashAmount") {
                        self.cashAmount = dict["CashAmount"] as! Double
                    }
                    if dict.keys.contains("CommodityCode") {
                        self.commodityCode = dict["CommodityCode"] as! String
                    }
                    if dict.keys.contains("Currency") {
                        self.currency = dict["Currency"] as! String
                    }
                    if dict.keys.contains("DeductedByCashCoupons") {
                        self.deductedByCashCoupons = dict["DeductedByCashCoupons"] as! Double
                    }
                    if dict.keys.contains("DeductedByCoupons") {
                        self.deductedByCoupons = dict["DeductedByCoupons"] as! Double
                    }
                    if dict.keys.contains("DeductedByPrepaidCard") {
                        self.deductedByPrepaidCard = dict["DeductedByPrepaidCard"] as! Double
                    }
                    if dict.keys.contains("InvoiceDiscount") {
                        self.invoiceDiscount = dict["InvoiceDiscount"] as! Double
                    }
                    if dict.keys.contains("Item") {
                        self.item = dict["Item"] as! String
                    }
                    if dict.keys.contains("OutstandingAmount") {
                        self.outstandingAmount = dict["OutstandingAmount"] as! Double
                    }
                    if dict.keys.contains("OwnerID") {
                        self.ownerID = dict["OwnerID"] as! String
                    }
                    if dict.keys.contains("PaymentAmount") {
                        self.paymentAmount = dict["PaymentAmount"] as! Double
                    }
                    if dict.keys.contains("PaymentCurrency") {
                        self.paymentCurrency = dict["PaymentCurrency"] as! String
                    }
                    if dict.keys.contains("PaymentTime") {
                        self.paymentTime = dict["PaymentTime"] as! String
                    }
                    if dict.keys.contains("PaymentTransactionID") {
                        self.paymentTransactionID = dict["PaymentTransactionID"] as! String
                    }
                    if dict.keys.contains("PipCode") {
                        self.pipCode = dict["PipCode"] as! String
                    }
                    if dict.keys.contains("PretaxAmount") {
                        self.pretaxAmount = dict["PretaxAmount"] as! Double
                    }
                    if dict.keys.contains("PretaxAmountLocal") {
                        self.pretaxAmountLocal = dict["PretaxAmountLocal"] as! Double
                    }
                    if dict.keys.contains("PretaxGrossAmount") {
                        self.pretaxGrossAmount = dict["PretaxGrossAmount"] as! Double
                    }
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! String
                    }
                    if dict.keys.contains("ProductDetail") {
                        self.productDetail = dict["ProductDetail"] as! String
                    }
                    if dict.keys.contains("ProductName") {
                        self.productName = dict["ProductName"] as! String
                    }
                    if dict.keys.contains("ProductType") {
                        self.productType = dict["ProductType"] as! String
                    }
                    if dict.keys.contains("RecordID") {
                        self.recordID = dict["RecordID"] as! String
                    }
                    if dict.keys.contains("RoundDownDiscount") {
                        self.roundDownDiscount = dict["RoundDownDiscount"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("SubOrderId") {
                        self.subOrderId = dict["SubOrderId"] as! String
                    }
                    if dict.keys.contains("SubscriptionType") {
                        self.subscriptionType = dict["SubscriptionType"] as! String
                    }
                    if dict.keys.contains("Tax") {
                        self.tax = dict["Tax"] as! Double
                    }
                    if dict.keys.contains("UsageEndTime") {
                        self.usageEndTime = dict["UsageEndTime"] as! String
                    }
                    if dict.keys.contains("UsageStartTime") {
                        self.usageStartTime = dict["UsageStartTime"] as! String
                    }
                }
            }
            public var item: [QuerySettleBillResponseBody.Data.Items.Item]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.item != nil {
                    var tmp : [Any] = []
                    for k in self.item! {
                        tmp.append(k.toMap())
                    }
                    map["Item"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Item") {
                    self.item = dict["Item"] as! [QuerySettleBillResponseBody.Data.Items.Item]
                }
            }
        }
        public var accountID: String?

        public var accountName: String?

        public var billingCycle: String?

        public var items: QuerySettleBillResponseBody.Data.Items?

        public var maxResults: Int32?

        public var nextToken: String?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.items?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountID != nil {
                map["AccountID"] = self.accountID!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.billingCycle != nil {
                map["BillingCycle"] = self.billingCycle!
            }
            if self.items != nil {
                map["Items"] = self.items?.toMap()
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountID") {
                self.accountID = dict["AccountID"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("BillingCycle") {
                self.billingCycle = dict["BillingCycle"] as! String
            }
            if dict.keys.contains("Items") {
                var model = QuerySettleBillResponseBody.Data.Items()
                model.fromMap(dict["Items"] as! [String: Any])
                self.items = model
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QuerySettleBillResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QuerySettleBillResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QuerySettleBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySettleBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QuerySettleBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySettlementBillRequest : Tea.TeaModel {
    public var billingCycle: String?

    public var endTime: String?

    public var isHideZeroCharge: Bool?

    public var ownerId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productCode: String?

    public var productType: String?

    public var startTime: String?

    public var subscriptionType: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billingCycle != nil {
            map["BillingCycle"] = self.billingCycle!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.isHideZeroCharge != nil {
            map["IsHideZeroCharge"] = self.isHideZeroCharge!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillingCycle") {
            self.billingCycle = dict["BillingCycle"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("IsHideZeroCharge") {
            self.isHideZeroCharge = dict["IsHideZeroCharge"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class QuerySettlementBillResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Item : Tea.TeaModel {
                public var accountDiscount: Double?

                public var afterTaxAmount: Double?

                public var billID: String?

                public var chargeDiscount: Double?

                public var clearedTime: String?

                public var config: String?

                public var createTime: String?

                public var currency: String?

                public var deductedByCashCoupons: Double?

                public var deductedByCoupons: Double?

                public var deductedByPrepaidCard: Double?

                public var invoiceNo: String?

                public var item: String?

                public var linkedCustomerOrderID: String?

                public var mybankPaymentAmount: Double?

                public var orderID: String?

                public var orderType: String?

                public var originalOrderID: String?

                public var outstandingAmount: Double?

                public var ownerID: String?

                public var payerAccount: String?

                public var paymentAmount: Double?

                public var paymentCurrency: String?

                public var paymentTime: String?

                public var pretaxAmount: Double?

                public var pretaxAmountLocal: Double?

                public var pretaxGrossAmount: Double?

                public var previousBillingCycleBalance: Double?

                public var productCode: String?

                public var productType: String?

                public var promotion: String?

                public var quantity: String?

                public var recordID: String?

                public var region: String?

                public var seller: String?

                public var solutionID: String?

                public var solutionName: String?

                public var status: String?

                public var suborderID: String?

                public var subscriptionType: String?

                public var tax: Double?

                public var usageEndTime: String?

                public var usageStartTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accountDiscount != nil {
                        map["AccountDiscount"] = self.accountDiscount!
                    }
                    if self.afterTaxAmount != nil {
                        map["AfterTaxAmount"] = self.afterTaxAmount!
                    }
                    if self.billID != nil {
                        map["BillID"] = self.billID!
                    }
                    if self.chargeDiscount != nil {
                        map["ChargeDiscount"] = self.chargeDiscount!
                    }
                    if self.clearedTime != nil {
                        map["ClearedTime"] = self.clearedTime!
                    }
                    if self.config != nil {
                        map["Config"] = self.config!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.currency != nil {
                        map["Currency"] = self.currency!
                    }
                    if self.deductedByCashCoupons != nil {
                        map["DeductedByCashCoupons"] = self.deductedByCashCoupons!
                    }
                    if self.deductedByCoupons != nil {
                        map["DeductedByCoupons"] = self.deductedByCoupons!
                    }
                    if self.deductedByPrepaidCard != nil {
                        map["DeductedByPrepaidCard"] = self.deductedByPrepaidCard!
                    }
                    if self.invoiceNo != nil {
                        map["InvoiceNo"] = self.invoiceNo!
                    }
                    if self.item != nil {
                        map["Item"] = self.item!
                    }
                    if self.linkedCustomerOrderID != nil {
                        map["LinkedCustomerOrderID"] = self.linkedCustomerOrderID!
                    }
                    if self.mybankPaymentAmount != nil {
                        map["MybankPaymentAmount"] = self.mybankPaymentAmount!
                    }
                    if self.orderID != nil {
                        map["OrderID"] = self.orderID!
                    }
                    if self.orderType != nil {
                        map["OrderType"] = self.orderType!
                    }
                    if self.originalOrderID != nil {
                        map["OriginalOrderID"] = self.originalOrderID!
                    }
                    if self.outstandingAmount != nil {
                        map["OutstandingAmount"] = self.outstandingAmount!
                    }
                    if self.ownerID != nil {
                        map["OwnerID"] = self.ownerID!
                    }
                    if self.payerAccount != nil {
                        map["PayerAccount"] = self.payerAccount!
                    }
                    if self.paymentAmount != nil {
                        map["PaymentAmount"] = self.paymentAmount!
                    }
                    if self.paymentCurrency != nil {
                        map["PaymentCurrency"] = self.paymentCurrency!
                    }
                    if self.paymentTime != nil {
                        map["PaymentTime"] = self.paymentTime!
                    }
                    if self.pretaxAmount != nil {
                        map["PretaxAmount"] = self.pretaxAmount!
                    }
                    if self.pretaxAmountLocal != nil {
                        map["PretaxAmountLocal"] = self.pretaxAmountLocal!
                    }
                    if self.pretaxGrossAmount != nil {
                        map["PretaxGrossAmount"] = self.pretaxGrossAmount!
                    }
                    if self.previousBillingCycleBalance != nil {
                        map["PreviousBillingCycleBalance"] = self.previousBillingCycleBalance!
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    if self.productType != nil {
                        map["ProductType"] = self.productType!
                    }
                    if self.promotion != nil {
                        map["Promotion"] = self.promotion!
                    }
                    if self.quantity != nil {
                        map["Quantity"] = self.quantity!
                    }
                    if self.recordID != nil {
                        map["RecordID"] = self.recordID!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.seller != nil {
                        map["Seller"] = self.seller!
                    }
                    if self.solutionID != nil {
                        map["SolutionID"] = self.solutionID!
                    }
                    if self.solutionName != nil {
                        map["SolutionName"] = self.solutionName!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.suborderID != nil {
                        map["SuborderID"] = self.suborderID!
                    }
                    if self.subscriptionType != nil {
                        map["SubscriptionType"] = self.subscriptionType!
                    }
                    if self.tax != nil {
                        map["Tax"] = self.tax!
                    }
                    if self.usageEndTime != nil {
                        map["UsageEndTime"] = self.usageEndTime!
                    }
                    if self.usageStartTime != nil {
                        map["UsageStartTime"] = self.usageStartTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccountDiscount") {
                        self.accountDiscount = dict["AccountDiscount"] as! Double
                    }
                    if dict.keys.contains("AfterTaxAmount") {
                        self.afterTaxAmount = dict["AfterTaxAmount"] as! Double
                    }
                    if dict.keys.contains("BillID") {
                        self.billID = dict["BillID"] as! String
                    }
                    if dict.keys.contains("ChargeDiscount") {
                        self.chargeDiscount = dict["ChargeDiscount"] as! Double
                    }
                    if dict.keys.contains("ClearedTime") {
                        self.clearedTime = dict["ClearedTime"] as! String
                    }
                    if dict.keys.contains("Config") {
                        self.config = dict["Config"] as! String
                    }
                    if dict.keys.contains("CreateTime") {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Currency") {
                        self.currency = dict["Currency"] as! String
                    }
                    if dict.keys.contains("DeductedByCashCoupons") {
                        self.deductedByCashCoupons = dict["DeductedByCashCoupons"] as! Double
                    }
                    if dict.keys.contains("DeductedByCoupons") {
                        self.deductedByCoupons = dict["DeductedByCoupons"] as! Double
                    }
                    if dict.keys.contains("DeductedByPrepaidCard") {
                        self.deductedByPrepaidCard = dict["DeductedByPrepaidCard"] as! Double
                    }
                    if dict.keys.contains("InvoiceNo") {
                        self.invoiceNo = dict["InvoiceNo"] as! String
                    }
                    if dict.keys.contains("Item") {
                        self.item = dict["Item"] as! String
                    }
                    if dict.keys.contains("LinkedCustomerOrderID") {
                        self.linkedCustomerOrderID = dict["LinkedCustomerOrderID"] as! String
                    }
                    if dict.keys.contains("MybankPaymentAmount") {
                        self.mybankPaymentAmount = dict["MybankPaymentAmount"] as! Double
                    }
                    if dict.keys.contains("OrderID") {
                        self.orderID = dict["OrderID"] as! String
                    }
                    if dict.keys.contains("OrderType") {
                        self.orderType = dict["OrderType"] as! String
                    }
                    if dict.keys.contains("OriginalOrderID") {
                        self.originalOrderID = dict["OriginalOrderID"] as! String
                    }
                    if dict.keys.contains("OutstandingAmount") {
                        self.outstandingAmount = dict["OutstandingAmount"] as! Double
                    }
                    if dict.keys.contains("OwnerID") {
                        self.ownerID = dict["OwnerID"] as! String
                    }
                    if dict.keys.contains("PayerAccount") {
                        self.payerAccount = dict["PayerAccount"] as! String
                    }
                    if dict.keys.contains("PaymentAmount") {
                        self.paymentAmount = dict["PaymentAmount"] as! Double
                    }
                    if dict.keys.contains("PaymentCurrency") {
                        self.paymentCurrency = dict["PaymentCurrency"] as! String
                    }
                    if dict.keys.contains("PaymentTime") {
                        self.paymentTime = dict["PaymentTime"] as! String
                    }
                    if dict.keys.contains("PretaxAmount") {
                        self.pretaxAmount = dict["PretaxAmount"] as! Double
                    }
                    if dict.keys.contains("PretaxAmountLocal") {
                        self.pretaxAmountLocal = dict["PretaxAmountLocal"] as! Double
                    }
                    if dict.keys.contains("PretaxGrossAmount") {
                        self.pretaxGrossAmount = dict["PretaxGrossAmount"] as! Double
                    }
                    if dict.keys.contains("PreviousBillingCycleBalance") {
                        self.previousBillingCycleBalance = dict["PreviousBillingCycleBalance"] as! Double
                    }
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! String
                    }
                    if dict.keys.contains("ProductType") {
                        self.productType = dict["ProductType"] as! String
                    }
                    if dict.keys.contains("Promotion") {
                        self.promotion = dict["Promotion"] as! String
                    }
                    if dict.keys.contains("Quantity") {
                        self.quantity = dict["Quantity"] as! String
                    }
                    if dict.keys.contains("RecordID") {
                        self.recordID = dict["RecordID"] as! String
                    }
                    if dict.keys.contains("Region") {
                        self.region = dict["Region"] as! String
                    }
                    if dict.keys.contains("Seller") {
                        self.seller = dict["Seller"] as! String
                    }
                    if dict.keys.contains("SolutionID") {
                        self.solutionID = dict["SolutionID"] as! String
                    }
                    if dict.keys.contains("SolutionName") {
                        self.solutionName = dict["SolutionName"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("SuborderID") {
                        self.suborderID = dict["SuborderID"] as! String
                    }
                    if dict.keys.contains("SubscriptionType") {
                        self.subscriptionType = dict["SubscriptionType"] as! String
                    }
                    if dict.keys.contains("Tax") {
                        self.tax = dict["Tax"] as! Double
                    }
                    if dict.keys.contains("UsageEndTime") {
                        self.usageEndTime = dict["UsageEndTime"] as! String
                    }
                    if dict.keys.contains("UsageStartTime") {
                        self.usageStartTime = dict["UsageStartTime"] as! String
                    }
                }
            }
            public var item: [QuerySettlementBillResponseBody.Data.Items.Item]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.item != nil {
                    var tmp : [Any] = []
                    for k in self.item! {
                        tmp.append(k.toMap())
                    }
                    map["Item"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Item") {
                    self.item = dict["Item"] as! [QuerySettlementBillResponseBody.Data.Items.Item]
                }
            }
        }
        public var billingCycle: String?

        public var items: QuerySettlementBillResponseBody.Data.Items?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.items?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billingCycle != nil {
                map["BillingCycle"] = self.billingCycle!
            }
            if self.items != nil {
                map["Items"] = self.items?.toMap()
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BillingCycle") {
                self.billingCycle = dict["BillingCycle"] as! String
            }
            if dict.keys.contains("Items") {
                var model = QuerySettlementBillResponseBody.Data.Items()
                model.fromMap(dict["Items"] as! [String: Any])
                self.items = model
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QuerySettlementBillResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QuerySettlementBillResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QuerySettlementBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySettlementBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QuerySettlementBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySplitItemBillRequest : Tea.TeaModel {
    public var billOwnerId: Int64?

    public var billingCycle: String?

    public var ownerId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productCode: String?

    public var productType: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwnerId != nil {
            map["BillOwnerId"] = self.billOwnerId!
        }
        if self.billingCycle != nil {
            map["BillingCycle"] = self.billingCycle!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwnerId") {
            self.billOwnerId = dict["BillOwnerId"] as! Int64
        }
        if dict.keys.contains("BillingCycle") {
            self.billingCycle = dict["BillingCycle"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class QuerySplitItemBillResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Item : Tea.TeaModel {
                public var adjustAmount: Double?

                public var billingDate: String?

                public var billingItem: String?

                public var billingType: String?

                public var cashAmount: Double?

                public var commodityCode: String?

                public var costUnit: String?

                public var currency: String?

                public var deductedByCashCoupons: Double?

                public var deductedByCoupons: Double?

                public var deductedByPrepaidCard: Double?

                public var deductedByResourcePackage: String?

                public var instanceConfig: String?

                public var instanceID: String?

                public var instanceSpec: String?

                public var internetIP: String?

                public var intranetIP: String?

                public var invoiceDiscount: Double?

                public var item: String?

                public var listPrice: String?

                public var listPriceUnit: String?

                public var nickName: String?

                public var outstandingAmount: Double?

                public var ownerID: String?

                public var paymentAmount: Double?

                public var pipCode: String?

                public var pretaxAmount: Double?

                public var pretaxGrossAmount: Double?

                public var productCode: String?

                public var productDetail: String?

                public var productName: String?

                public var productType: String?

                public var region: String?

                public var resourceGroup: String?

                public var servicePeriod: String?

                public var servicePeriodUnit: String?

                public var splitAccountID: String?

                public var splitAccountName: String?

                public var splitBillingCycle: String?

                public var splitCommodityCode: String?

                public var splitItemID: String?

                public var splitItemName: String?

                public var splitProductDetail: String?

                public var subscriptionType: String?

                public var tag: String?

                public var usage: String?

                public var usageUnit: String?

                public var zone: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.adjustAmount != nil {
                        map["AdjustAmount"] = self.adjustAmount!
                    }
                    if self.billingDate != nil {
                        map["BillingDate"] = self.billingDate!
                    }
                    if self.billingItem != nil {
                        map["BillingItem"] = self.billingItem!
                    }
                    if self.billingType != nil {
                        map["BillingType"] = self.billingType!
                    }
                    if self.cashAmount != nil {
                        map["CashAmount"] = self.cashAmount!
                    }
                    if self.commodityCode != nil {
                        map["CommodityCode"] = self.commodityCode!
                    }
                    if self.costUnit != nil {
                        map["CostUnit"] = self.costUnit!
                    }
                    if self.currency != nil {
                        map["Currency"] = self.currency!
                    }
                    if self.deductedByCashCoupons != nil {
                        map["DeductedByCashCoupons"] = self.deductedByCashCoupons!
                    }
                    if self.deductedByCoupons != nil {
                        map["DeductedByCoupons"] = self.deductedByCoupons!
                    }
                    if self.deductedByPrepaidCard != nil {
                        map["DeductedByPrepaidCard"] = self.deductedByPrepaidCard!
                    }
                    if self.deductedByResourcePackage != nil {
                        map["DeductedByResourcePackage"] = self.deductedByResourcePackage!
                    }
                    if self.instanceConfig != nil {
                        map["InstanceConfig"] = self.instanceConfig!
                    }
                    if self.instanceID != nil {
                        map["InstanceID"] = self.instanceID!
                    }
                    if self.instanceSpec != nil {
                        map["InstanceSpec"] = self.instanceSpec!
                    }
                    if self.internetIP != nil {
                        map["InternetIP"] = self.internetIP!
                    }
                    if self.intranetIP != nil {
                        map["IntranetIP"] = self.intranetIP!
                    }
                    if self.invoiceDiscount != nil {
                        map["InvoiceDiscount"] = self.invoiceDiscount!
                    }
                    if self.item != nil {
                        map["Item"] = self.item!
                    }
                    if self.listPrice != nil {
                        map["ListPrice"] = self.listPrice!
                    }
                    if self.listPriceUnit != nil {
                        map["ListPriceUnit"] = self.listPriceUnit!
                    }
                    if self.nickName != nil {
                        map["NickName"] = self.nickName!
                    }
                    if self.outstandingAmount != nil {
                        map["OutstandingAmount"] = self.outstandingAmount!
                    }
                    if self.ownerID != nil {
                        map["OwnerID"] = self.ownerID!
                    }
                    if self.paymentAmount != nil {
                        map["PaymentAmount"] = self.paymentAmount!
                    }
                    if self.pipCode != nil {
                        map["PipCode"] = self.pipCode!
                    }
                    if self.pretaxAmount != nil {
                        map["PretaxAmount"] = self.pretaxAmount!
                    }
                    if self.pretaxGrossAmount != nil {
                        map["PretaxGrossAmount"] = self.pretaxGrossAmount!
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    if self.productDetail != nil {
                        map["ProductDetail"] = self.productDetail!
                    }
                    if self.productName != nil {
                        map["ProductName"] = self.productName!
                    }
                    if self.productType != nil {
                        map["ProductType"] = self.productType!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.resourceGroup != nil {
                        map["ResourceGroup"] = self.resourceGroup!
                    }
                    if self.servicePeriod != nil {
                        map["ServicePeriod"] = self.servicePeriod!
                    }
                    if self.servicePeriodUnit != nil {
                        map["ServicePeriodUnit"] = self.servicePeriodUnit!
                    }
                    if self.splitAccountID != nil {
                        map["SplitAccountID"] = self.splitAccountID!
                    }
                    if self.splitAccountName != nil {
                        map["SplitAccountName"] = self.splitAccountName!
                    }
                    if self.splitBillingCycle != nil {
                        map["SplitBillingCycle"] = self.splitBillingCycle!
                    }
                    if self.splitCommodityCode != nil {
                        map["SplitCommodityCode"] = self.splitCommodityCode!
                    }
                    if self.splitItemID != nil {
                        map["SplitItemID"] = self.splitItemID!
                    }
                    if self.splitItemName != nil {
                        map["SplitItemName"] = self.splitItemName!
                    }
                    if self.splitProductDetail != nil {
                        map["SplitProductDetail"] = self.splitProductDetail!
                    }
                    if self.subscriptionType != nil {
                        map["SubscriptionType"] = self.subscriptionType!
                    }
                    if self.tag != nil {
                        map["Tag"] = self.tag!
                    }
                    if self.usage != nil {
                        map["Usage"] = self.usage!
                    }
                    if self.usageUnit != nil {
                        map["UsageUnit"] = self.usageUnit!
                    }
                    if self.zone != nil {
                        map["Zone"] = self.zone!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AdjustAmount") {
                        self.adjustAmount = dict["AdjustAmount"] as! Double
                    }
                    if dict.keys.contains("BillingDate") {
                        self.billingDate = dict["BillingDate"] as! String
                    }
                    if dict.keys.contains("BillingItem") {
                        self.billingItem = dict["BillingItem"] as! String
                    }
                    if dict.keys.contains("BillingType") {
                        self.billingType = dict["BillingType"] as! String
                    }
                    if dict.keys.contains("CashAmount") {
                        self.cashAmount = dict["CashAmount"] as! Double
                    }
                    if dict.keys.contains("CommodityCode") {
                        self.commodityCode = dict["CommodityCode"] as! String
                    }
                    if dict.keys.contains("CostUnit") {
                        self.costUnit = dict["CostUnit"] as! String
                    }
                    if dict.keys.contains("Currency") {
                        self.currency = dict["Currency"] as! String
                    }
                    if dict.keys.contains("DeductedByCashCoupons") {
                        self.deductedByCashCoupons = dict["DeductedByCashCoupons"] as! Double
                    }
                    if dict.keys.contains("DeductedByCoupons") {
                        self.deductedByCoupons = dict["DeductedByCoupons"] as! Double
                    }
                    if dict.keys.contains("DeductedByPrepaidCard") {
                        self.deductedByPrepaidCard = dict["DeductedByPrepaidCard"] as! Double
                    }
                    if dict.keys.contains("DeductedByResourcePackage") {
                        self.deductedByResourcePackage = dict["DeductedByResourcePackage"] as! String
                    }
                    if dict.keys.contains("InstanceConfig") {
                        self.instanceConfig = dict["InstanceConfig"] as! String
                    }
                    if dict.keys.contains("InstanceID") {
                        self.instanceID = dict["InstanceID"] as! String
                    }
                    if dict.keys.contains("InstanceSpec") {
                        self.instanceSpec = dict["InstanceSpec"] as! String
                    }
                    if dict.keys.contains("InternetIP") {
                        self.internetIP = dict["InternetIP"] as! String
                    }
                    if dict.keys.contains("IntranetIP") {
                        self.intranetIP = dict["IntranetIP"] as! String
                    }
                    if dict.keys.contains("InvoiceDiscount") {
                        self.invoiceDiscount = dict["InvoiceDiscount"] as! Double
                    }
                    if dict.keys.contains("Item") {
                        self.item = dict["Item"] as! String
                    }
                    if dict.keys.contains("ListPrice") {
                        self.listPrice = dict["ListPrice"] as! String
                    }
                    if dict.keys.contains("ListPriceUnit") {
                        self.listPriceUnit = dict["ListPriceUnit"] as! String
                    }
                    if dict.keys.contains("NickName") {
                        self.nickName = dict["NickName"] as! String
                    }
                    if dict.keys.contains("OutstandingAmount") {
                        self.outstandingAmount = dict["OutstandingAmount"] as! Double
                    }
                    if dict.keys.contains("OwnerID") {
                        self.ownerID = dict["OwnerID"] as! String
                    }
                    if dict.keys.contains("PaymentAmount") {
                        self.paymentAmount = dict["PaymentAmount"] as! Double
                    }
                    if dict.keys.contains("PipCode") {
                        self.pipCode = dict["PipCode"] as! String
                    }
                    if dict.keys.contains("PretaxAmount") {
                        self.pretaxAmount = dict["PretaxAmount"] as! Double
                    }
                    if dict.keys.contains("PretaxGrossAmount") {
                        self.pretaxGrossAmount = dict["PretaxGrossAmount"] as! Double
                    }
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! String
                    }
                    if dict.keys.contains("ProductDetail") {
                        self.productDetail = dict["ProductDetail"] as! String
                    }
                    if dict.keys.contains("ProductName") {
                        self.productName = dict["ProductName"] as! String
                    }
                    if dict.keys.contains("ProductType") {
                        self.productType = dict["ProductType"] as! String
                    }
                    if dict.keys.contains("Region") {
                        self.region = dict["Region"] as! String
                    }
                    if dict.keys.contains("ResourceGroup") {
                        self.resourceGroup = dict["ResourceGroup"] as! String
                    }
                    if dict.keys.contains("ServicePeriod") {
                        self.servicePeriod = dict["ServicePeriod"] as! String
                    }
                    if dict.keys.contains("ServicePeriodUnit") {
                        self.servicePeriodUnit = dict["ServicePeriodUnit"] as! String
                    }
                    if dict.keys.contains("SplitAccountID") {
                        self.splitAccountID = dict["SplitAccountID"] as! String
                    }
                    if dict.keys.contains("SplitAccountName") {
                        self.splitAccountName = dict["SplitAccountName"] as! String
                    }
                    if dict.keys.contains("SplitBillingCycle") {
                        self.splitBillingCycle = dict["SplitBillingCycle"] as! String
                    }
                    if dict.keys.contains("SplitCommodityCode") {
                        self.splitCommodityCode = dict["SplitCommodityCode"] as! String
                    }
                    if dict.keys.contains("SplitItemID") {
                        self.splitItemID = dict["SplitItemID"] as! String
                    }
                    if dict.keys.contains("SplitItemName") {
                        self.splitItemName = dict["SplitItemName"] as! String
                    }
                    if dict.keys.contains("SplitProductDetail") {
                        self.splitProductDetail = dict["SplitProductDetail"] as! String
                    }
                    if dict.keys.contains("SubscriptionType") {
                        self.subscriptionType = dict["SubscriptionType"] as! String
                    }
                    if dict.keys.contains("Tag") {
                        self.tag = dict["Tag"] as! String
                    }
                    if dict.keys.contains("Usage") {
                        self.usage = dict["Usage"] as! String
                    }
                    if dict.keys.contains("UsageUnit") {
                        self.usageUnit = dict["UsageUnit"] as! String
                    }
                    if dict.keys.contains("Zone") {
                        self.zone = dict["Zone"] as! String
                    }
                }
            }
            public var item: [QuerySplitItemBillResponseBody.Data.Items.Item]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.item != nil {
                    var tmp : [Any] = []
                    for k in self.item! {
                        tmp.append(k.toMap())
                    }
                    map["Item"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Item") {
                    self.item = dict["Item"] as! [QuerySplitItemBillResponseBody.Data.Items.Item]
                }
            }
        }
        public var accountID: String?

        public var accountName: String?

        public var billingCycle: String?

        public var items: QuerySplitItemBillResponseBody.Data.Items?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.items?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountID != nil {
                map["AccountID"] = self.accountID!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.billingCycle != nil {
                map["BillingCycle"] = self.billingCycle!
            }
            if self.items != nil {
                map["Items"] = self.items?.toMap()
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountID") {
                self.accountID = dict["AccountID"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("BillingCycle") {
                self.billingCycle = dict["BillingCycle"] as! String
            }
            if dict.keys.contains("Items") {
                var model = QuerySplitItemBillResponseBody.Data.Items()
                model.fromMap(dict["Items"] as! [String: Any])
                self.items = model
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QuerySplitItemBillResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QuerySplitItemBillResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QuerySplitItemBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySplitItemBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QuerySplitItemBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryUserOmsDataRequest : Tea.TeaModel {
    public var dataType: String?

    public var endTime: String?

    public var marker: String?

    public var ownerId: Int64?

    public var pageSize: Int32?

    public var startTime: String?

    public var table: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.table != nil {
            map["Table"] = self.table!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataType") {
            self.dataType = dict["DataType"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Table") {
            self.table = dict["Table"] as! String
        }
    }
}

public class QueryUserOmsDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var hostId: String?

        public var marker: String?

        public var omsData: [[String: Any]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.marker != nil {
                map["Marker"] = self.marker!
            }
            if self.omsData != nil {
                map["OmsData"] = self.omsData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostId") {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("Marker") {
                self.marker = dict["Marker"] as! String
            }
            if dict.keys.contains("OmsData") {
                self.omsData = dict["OmsData"] as! [[String: Any]]
            }
        }
    }
    public var code: String?

    public var data: QueryUserOmsDataResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryUserOmsDataResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryUserOmsDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUserOmsDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryUserOmsDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefundInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var immediatelyRelease: String?

    public var instanceId: String?

    public var productCode: String?

    public var productType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.immediatelyRelease != nil {
            map["ImmediatelyRelease"] = self.immediatelyRelease!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ImmediatelyRelease") {
            self.immediatelyRelease = dict["ImmediatelyRelease"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class RefundInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var hostId: String?

        public var orderId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostId") {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: RefundInstanceResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = RefundInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RefundInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefundInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RefundInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseInstanceRequest : Tea.TeaModel {
    public var instanceIds: String?

    public var ownerId: Int64?

    public var productCode: String?

    public var productType: String?

    public var region: String?

    public var renewStatus: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.renewStatus != nil {
            map["RenewStatus"] = self.renewStatus!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RenewStatus") {
            self.renewStatus = dict["RenewStatus"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class ReleaseInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var hostId: String?

        public var releaseResult: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.releaseResult != nil {
                map["ReleaseResult"] = self.releaseResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostId") {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("ReleaseResult") {
                self.releaseResult = dict["ReleaseResult"] as! Bool
            }
        }
    }
    public var code: String?

    public var data: ReleaseInstanceResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ReleaseInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ReleaseInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ReleaseInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RelieveAccountRelationRequest : Tea.TeaModel {
    public var childUserId: Int64?

    public var parentUserId: Int64?

    public var relationId: Int64?

    public var relationType: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.childUserId != nil {
            map["ChildUserId"] = self.childUserId!
        }
        if self.parentUserId != nil {
            map["ParentUserId"] = self.parentUserId!
        }
        if self.relationId != nil {
            map["RelationId"] = self.relationId!
        }
        if self.relationType != nil {
            map["RelationType"] = self.relationType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChildUserId") {
            self.childUserId = dict["ChildUserId"] as! Int64
        }
        if dict.keys.contains("ParentUserId") {
            self.parentUserId = dict["ParentUserId"] as! Int64
        }
        if dict.keys.contains("RelationId") {
            self.relationId = dict["RelationId"] as! Int64
        }
        if dict.keys.contains("RelationType") {
            self.relationType = dict["RelationType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RelieveAccountRelationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var hostId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostId") {
                self.hostId = dict["HostId"] as! String
            }
        }
    }
    public var code: String?

    public var data: RelieveAccountRelationResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = RelieveAccountRelationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RelieveAccountRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RelieveAccountRelationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RelieveAccountRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenewInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var ownerId: Int64?

    public var productCode: String?

    public var productType: String?

    public var renewPeriod: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.renewPeriod != nil {
            map["RenewPeriod"] = self.renewPeriod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("RenewPeriod") {
            self.renewPeriod = dict["RenewPeriod"] as! Int32
        }
    }
}

public class RenewInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: RenewInstanceResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = RenewInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RenewInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RenewInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenewResourcePackageRequest : Tea.TeaModel {
    public var duration: Int32?

    public var effectiveDate: String?

    public var instanceId: String?

    public var ownerId: Int64?

    public var pricingCycle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.effectiveDate != nil {
            map["EffectiveDate"] = self.effectiveDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("EffectiveDate") {
            self.effectiveDate = dict["EffectiveDate"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PricingCycle") {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
    }
}

public class RenewResourcePackageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var orderId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: RenewResourcePackageResponseBody.Data?

    public var message: String?

    public var orderId: Int64?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = RenewResourcePackageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RenewResourcePackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewResourcePackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RenewResourcePackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveUserCreditRequest : Tea.TeaModel {
    public var avoidExpiration: Bool?

    public var avoidNotification: Bool?

    public var avoidPrepaidExpiration: Bool?

    public var avoidPrepaidNotification: Bool?

    public var creditType: String?

    public var creditValue: String?

    public var description_: String?

    public var operator_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.avoidExpiration != nil {
            map["AvoidExpiration"] = self.avoidExpiration!
        }
        if self.avoidNotification != nil {
            map["AvoidNotification"] = self.avoidNotification!
        }
        if self.avoidPrepaidExpiration != nil {
            map["AvoidPrepaidExpiration"] = self.avoidPrepaidExpiration!
        }
        if self.avoidPrepaidNotification != nil {
            map["AvoidPrepaidNotification"] = self.avoidPrepaidNotification!
        }
        if self.creditType != nil {
            map["CreditType"] = self.creditType!
        }
        if self.creditValue != nil {
            map["CreditValue"] = self.creditValue!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvoidExpiration") {
            self.avoidExpiration = dict["AvoidExpiration"] as! Bool
        }
        if dict.keys.contains("AvoidNotification") {
            self.avoidNotification = dict["AvoidNotification"] as! Bool
        }
        if dict.keys.contains("AvoidPrepaidExpiration") {
            self.avoidPrepaidExpiration = dict["AvoidPrepaidExpiration"] as! Bool
        }
        if dict.keys.contains("AvoidPrepaidNotification") {
            self.avoidPrepaidNotification = dict["AvoidPrepaidNotification"] as! Bool
        }
        if dict.keys.contains("CreditType") {
            self.creditType = dict["CreditType"] as! String
        }
        if dict.keys.contains("CreditValue") {
            self.creditValue = dict["CreditValue"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Operator") {
            self.operator_ = dict["Operator"] as! String
        }
    }
}

public class SaveUserCreditResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SaveUserCreditResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveUserCreditResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SaveUserCreditResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetAllExpirationDayRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var unifyExpireDay: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.unifyExpireDay != nil {
            map["UnifyExpireDay"] = self.unifyExpireDay!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("UnifyExpireDay") {
            self.unifyExpireDay = dict["UnifyExpireDay"] as! String
        }
    }
}

public class SetAllExpirationDayResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SetAllExpirationDayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAllExpirationDayResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetAllExpirationDayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetCreditLabelActionRequest : Tea.TeaModel {
    public var actionType: String?

    public var clearCycle: String?

    public var creditAmount: String?

    public var currencyCode: String?

    public var dailyCycle: String?

    public var description_: String?

    public var isNeedAddSettleLabel: String?

    public var isNeedAdjustCreditAccount: String?

    public var isNeedSaveNotifyRule: String?

    public var isNeedSetCreditAmount: String?

    public var needNotice: Bool?

    public var newCreateMode: Bool?

    public var operator_: String?

    public var requestId: String?

    public var siteCode: String?

    public var source: String?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.clearCycle != nil {
            map["ClearCycle"] = self.clearCycle!
        }
        if self.creditAmount != nil {
            map["CreditAmount"] = self.creditAmount!
        }
        if self.currencyCode != nil {
            map["CurrencyCode"] = self.currencyCode!
        }
        if self.dailyCycle != nil {
            map["DailyCycle"] = self.dailyCycle!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.isNeedAddSettleLabel != nil {
            map["IsNeedAddSettleLabel"] = self.isNeedAddSettleLabel!
        }
        if self.isNeedAdjustCreditAccount != nil {
            map["IsNeedAdjustCreditAccount"] = self.isNeedAdjustCreditAccount!
        }
        if self.isNeedSaveNotifyRule != nil {
            map["IsNeedSaveNotifyRule"] = self.isNeedSaveNotifyRule!
        }
        if self.isNeedSetCreditAmount != nil {
            map["IsNeedSetCreditAmount"] = self.isNeedSetCreditAmount!
        }
        if self.needNotice != nil {
            map["NeedNotice"] = self.needNotice!
        }
        if self.newCreateMode != nil {
            map["NewCreateMode"] = self.newCreateMode!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.siteCode != nil {
            map["SiteCode"] = self.siteCode!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionType") {
            self.actionType = dict["ActionType"] as! String
        }
        if dict.keys.contains("ClearCycle") {
            self.clearCycle = dict["ClearCycle"] as! String
        }
        if dict.keys.contains("CreditAmount") {
            self.creditAmount = dict["CreditAmount"] as! String
        }
        if dict.keys.contains("CurrencyCode") {
            self.currencyCode = dict["CurrencyCode"] as! String
        }
        if dict.keys.contains("DailyCycle") {
            self.dailyCycle = dict["DailyCycle"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("IsNeedAddSettleLabel") {
            self.isNeedAddSettleLabel = dict["IsNeedAddSettleLabel"] as! String
        }
        if dict.keys.contains("IsNeedAdjustCreditAccount") {
            self.isNeedAdjustCreditAccount = dict["IsNeedAdjustCreditAccount"] as! String
        }
        if dict.keys.contains("IsNeedSaveNotifyRule") {
            self.isNeedSaveNotifyRule = dict["IsNeedSaveNotifyRule"] as! String
        }
        if dict.keys.contains("IsNeedSetCreditAmount") {
            self.isNeedSetCreditAmount = dict["IsNeedSetCreditAmount"] as! String
        }
        if dict.keys.contains("NeedNotice") {
            self.needNotice = dict["NeedNotice"] as! Bool
        }
        if dict.keys.contains("NewCreateMode") {
            self.newCreateMode = dict["NewCreateMode"] as! Bool
        }
        if dict.keys.contains("Operator") {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SiteCode") {
            self.siteCode = dict["SiteCode"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! String
        }
    }
}

public class SetCreditLabelActionResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SetCreditLabelActionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetCreditLabelActionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetCreditLabelActionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetRenewalRequest : Tea.TeaModel {
    public var instanceIDs: String?

    public var ownerId: Int64?

    public var productCode: String?

    public var productType: String?

    public var renewalPeriod: Int32?

    public var renewalPeriodUnit: String?

    public var renewalStatus: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIDs != nil {
            map["InstanceIDs"] = self.instanceIDs!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.renewalPeriod != nil {
            map["RenewalPeriod"] = self.renewalPeriod!
        }
        if self.renewalPeriodUnit != nil {
            map["RenewalPeriodUnit"] = self.renewalPeriodUnit!
        }
        if self.renewalStatus != nil {
            map["RenewalStatus"] = self.renewalStatus!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIDs") {
            self.instanceIDs = dict["InstanceIDs"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("RenewalPeriod") {
            self.renewalPeriod = dict["RenewalPeriod"] as! Int32
        }
        if dict.keys.contains("RenewalPeriodUnit") {
            self.renewalPeriodUnit = dict["RenewalPeriodUnit"] as! String
        }
        if dict.keys.contains("RenewalStatus") {
            self.renewalStatus = dict["RenewalStatus"] as! String
        }
        if dict.keys.contains("SubscriptionType") {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class SetRenewalResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SetRenewalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetRenewalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetRenewalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetResellerUserAlarmThresholdRequest : Tea.TeaModel {
    public var alarmThresholds: String?

    public var alarmType: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmThresholds != nil {
            map["AlarmThresholds"] = self.alarmThresholds!
        }
        if self.alarmType != nil {
            map["AlarmType"] = self.alarmType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmThresholds") {
            self.alarmThresholds = dict["AlarmThresholds"] as! String
        }
        if dict.keys.contains("AlarmType") {
            self.alarmType = dict["AlarmType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class SetResellerUserAlarmThresholdResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SetResellerUserAlarmThresholdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetResellerUserAlarmThresholdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetResellerUserAlarmThresholdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetResellerUserQuotaRequest : Tea.TeaModel {
    public var amount: String?

    public var currency: String?

    public var outBizId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.outBizId != nil {
            map["OutBizId"] = self.outBizId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Amount") {
            self.amount = dict["Amount"] as! String
        }
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("OutBizId") {
            self.outBizId = dict["OutBizId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class SetResellerUserQuotaResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SetResellerUserQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetResellerUserQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetResellerUserQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetResellerUserStatusRequest : Tea.TeaModel {
    public var businessType: String?

    public var ownerId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class SetResellerUserStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SetResellerUserStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetResellerUserStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetResellerUserStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubscribeBillToOSSRequest : Tea.TeaModel {
    public var beginBillingCycle: String?

    public var bucketOwnerId: Int64?

    public var bucketPath: String?

    public var multAccountRelSubscribe: String?

    public var subscribeBucket: String?

    public var subscribeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginBillingCycle != nil {
            map["BeginBillingCycle"] = self.beginBillingCycle!
        }
        if self.bucketOwnerId != nil {
            map["BucketOwnerId"] = self.bucketOwnerId!
        }
        if self.bucketPath != nil {
            map["BucketPath"] = self.bucketPath!
        }
        if self.multAccountRelSubscribe != nil {
            map["MultAccountRelSubscribe"] = self.multAccountRelSubscribe!
        }
        if self.subscribeBucket != nil {
            map["SubscribeBucket"] = self.subscribeBucket!
        }
        if self.subscribeType != nil {
            map["SubscribeType"] = self.subscribeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginBillingCycle") {
            self.beginBillingCycle = dict["BeginBillingCycle"] as! String
        }
        if dict.keys.contains("BucketOwnerId") {
            self.bucketOwnerId = dict["BucketOwnerId"] as! Int64
        }
        if dict.keys.contains("BucketPath") {
            self.bucketPath = dict["BucketPath"] as! String
        }
        if dict.keys.contains("MultAccountRelSubscribe") {
            self.multAccountRelSubscribe = dict["MultAccountRelSubscribe"] as! String
        }
        if dict.keys.contains("SubscribeBucket") {
            self.subscribeBucket = dict["SubscribeBucket"] as! String
        }
        if dict.keys.contains("SubscribeType") {
            self.subscribeType = dict["SubscribeType"] as! String
        }
    }
}

public class SubscribeBillToOSSResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SubscribeBillToOSSResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubscribeBillToOSSResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SubscribeBillToOSSResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [TagResourcesRequest.Tag]
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnsubscribeBillToOSSRequest : Tea.TeaModel {
    public var multAccountRelSubscribe: String?

    public var subscribeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.multAccountRelSubscribe != nil {
            map["MultAccountRelSubscribe"] = self.multAccountRelSubscribe!
        }
        if self.subscribeType != nil {
            map["SubscribeType"] = self.subscribeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MultAccountRelSubscribe") {
            self.multAccountRelSubscribe = dict["MultAccountRelSubscribe"] as! String
        }
        if dict.keys.contains("SubscribeType") {
            self.subscribeType = dict["SubscribeType"] as! String
        }
    }
}

public class UnsubscribeBillToOSSResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UnsubscribeBillToOSSResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnsubscribeBillToOSSResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UnsubscribeBillToOSSResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! [String]
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeResourcePackageRequest : Tea.TeaModel {
    public var effectiveDate: String?

    public var instanceId: String?

    public var ownerId: Int64?

    public var specification: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.effectiveDate != nil {
            map["EffectiveDate"] = self.effectiveDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.specification != nil {
            map["Specification"] = self.specification!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EffectiveDate") {
            self.effectiveDate = dict["EffectiveDate"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Specification") {
            self.specification = dict["Specification"] as! String
        }
    }
}

public class UpgradeResourcePackageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var orderId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: UpgradeResourcePackageResponseBody.Data?

    public var message: String?

    public var orderId: Int64?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = UpgradeResourcePackageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpgradeResourcePackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeResourcePackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpgradeResourcePackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
