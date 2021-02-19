//import gg
//import gx
import os
import ui

const (
	win_width  = 1000
	win_height = 900
	//picture_size = 20 
)

struct App {
mut:
	first_name string = "Yes"
	last_name string = "fn main(){}"
}

//struct State{}

fn init_elements(){
}

fn main() {
	init_elements()

	mut app := &App{
		//gg: 0 //TODO: This 
	}
	window := ui.window({
		width: win_width
		height: win_height
		title: 'VIDE'
		resizable: true
		state: app
	}, [ 
		ui.column({
			height: 10
			margin: ui.Margin{
				top: 5 
				left: 5 
				right: 5
				bottom:  5
			} 
		}, [
			
			ui.picture(
				width: 1000
				height: 2 //25 
				path: os.resource_abs_path('HackFix.png')
			) //DO NOT REMOVE! - HACK image to stop code break.
			
			ui.row({
				height: 50
				margin: ui.Margin{
					top:5
					bottom: 5
				}
				//widths: [ui.compact, 300.] //spaces out elements
				spacing: 15
			}, [
				ui.picture(
					width: 125
					height:50
					path: os.resource_abs_path("VideLOGO.png")
					//on_click: logo_click_fn()
				),
				ui.button(
					width: 100
					height:25
					text: "Save"
					//on_click: save_click_fn()
				),
				ui.button(
					width: 100
					height: 25
					text:"Load"
					//on_click: load_click_fn()
				),
				ui.button(
					width: 100
					height: 25
					text: "Open terminal"
					//on_click: terminal_click_fn()
				)
			]),
			
			ui.column({
				widths: ui.stretch
				heights: ui.stretch
				spacing: 13
			}, [
				ui.textbox({ 
					width: 900 
					height: 900 
					placeholder: 'Last name'
					text: &app.last_name

				}),
			]),
		]),
	])
	ui.run(window)
}

fn logo_click_fn(a voidptr, b voidptr){
	println("Picture Clicked!")
}
fn save_click_fn(a voidptr, b voidptr){

}
fn load_click_fn(a voidptr, b voidptr){

}
fn terminal_click_fn(a voidptr, b voidptr){

}
/*
fn btn_save_click(a voidptr, b voidptr){
	mut app := &App{
		gg: 0
	}
	app.gg = gg.new_context({
		bg_color: gx.white
		width: win_width
		height: win_height
		use_ortho: true // This is needed for 2D drawing
		create_window: true
		window_title: 'Rectangles'
		frame_fn: frame
		user_data: app
		init_fn: init_images
	})
	app.image = app.gg.create_image(os.resource_abs_path('logo.png'))
	app.gg.run()
}
fn frame(){
	app.gg.begin()
	app.draw()
	app.gg.end()
}
fn (app &App) draw() {
	app.gg.draw_rect(10, 10, 100, 30, gx.blue)
	app.gg.draw_empty_rect(110, 150, 80, 40, gx.black)
	app.gg.draw_image(230, 30, app.image.width, app.image.height, app.image)
}
*/

//fn draw_suggestions(x int, y int, z int, contents []string){}