require "application_system_test_case"

class OrdenesTest < ApplicationSystemTestCase
  setup do
    @orden = ordenes(:one)
  end

  test "visiting the index" do
    visit ordenes_url
    assert_selector "h1", text: "Ordenes"
  end

  test "should create orden" do
    visit ordenes_url
    click_on "New orden"

    fill_in "Cliente", with: @orden.cliente_id
    fill_in "Monto total", with: @orden.monto_total
    fill_in "Producto", with: @orden.producto_id
    fill_in "Tipopago", with: @orden.tipoPago_id
    click_on "Create Orden"

    assert_text "Orden was successfully created"
    click_on "Back"
  end

  test "should update Orden" do
    visit orden_url(@orden)
    click_on "Edit this orden", match: :first

    fill_in "Cliente", with: @orden.cliente_id
    fill_in "Monto total", with: @orden.monto_total
    fill_in "Producto", with: @orden.producto_id
    fill_in "Tipopago", with: @orden.tipoPago_id
    click_on "Update Orden"

    assert_text "Orden was successfully updated"
    click_on "Back"
  end

  test "should destroy Orden" do
    visit orden_url(@orden)
    click_on "Destroy this orden", match: :first

    assert_text "Orden was successfully destroyed"
  end
end
