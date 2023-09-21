
-- Liên kết bảng Hợp đồng bảo hiểm và Bảng Loại chính sách bảo hiểm
ALTER TABLE InsuranceContracts
ADD CONSTRAINT FK_InsuranceContracts_InsurancePolicies
FOREIGN KEY (ChinhSachID)
REFERENCES InsurancePolicies(ChinhSachID);

-- Liên kết bảng Hợp đồng bảo hiểm và Bảng Khách hàng
ALTER TABLE InsuranceContracts
ADD CONSTRAINT FK_InsuranceContracts_Customers
FOREIGN KEY (KhachHangID)
REFERENCES Customers(KhachHangID);

-- Liên kết bảng Thanh toán và Bảng Hợp đồng bảo hiểm
ALTER TABLE Payments
ADD CONSTRAINT FK_Payments_InsuranceContracts
FOREIGN KEY (HopDongID)
REFERENCES InsuranceContracts(HopDongID);

-- Liên kết bảng Quyền lợi và yêu cầu bồi thường và Bảng Hợp đồng bảo hiểm
ALTER TABLE Claims
ADD CONSTRAINT FK_Claims_InsuranceContracts
FOREIGN KEY (HopDongID)
REFERENCES InsuranceContracts(HopDongID);

-- Liên kết bảng Tài khoản và Bảng Khách hàng
ALTER TABLE Accounts
ADD CONSTRAINT FK_Accounts_Customers
FOREIGN KEY (KhachHangID)
REFERENCES Customers(KhachHangID);
