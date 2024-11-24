import OrderList from "./OrderList";
import React from "react";
const ManagerOrder = () => {
  return (
    <>
      <div className="manage-job">
        <h1>Danh sách đơn hàng</h1>
      </div>
      <OrderList />
    </>
  )
}

export default ManagerOrder;