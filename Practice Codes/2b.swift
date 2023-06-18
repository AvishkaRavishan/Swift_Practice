enum status{
  case processing
  case shipping
  case delivered
}

var sts : status = .shipping

switch sts {
  case .processing :
    print("Processing!")
  case .shipping :
    print("Shipping!")
  case .delivered :
    print("Delivered!")
}
