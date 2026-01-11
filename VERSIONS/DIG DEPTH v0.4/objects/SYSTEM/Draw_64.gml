//setup
draw_set_font(fnt_Impact);
draw_set_valign(fa_center);

// Draw points
draw_set_halign(fa_left); // Alterado para desenhar pontos à esquerda

// Check if previous_points exists and initialize if not
if (!variable_instance_exists(id, "previous_points")) {
    previous_points = points;
}

// Check if points have increased
if (points > previous_points) {
    blink_timer = blink_duration;  // Reset blink timer
}

// Blink effect
if (blink_timer > 0) {
    draw_set_color(c_yellow);
    draw_text(15, 31, string(points)); // Alterado para desenhar pontos à esquerda
    blink_timer--;
} else {
    draw_set_color(c_white);
    draw_text(15, 31, string(points)); // Alterado para desenhar pontos à esquerda
}

// Store the previous points for comparison in the next frame
previous_points = points;

// Draw time
draw_set_halign(fa_center);

if (drawRed) {
    draw_set_color(c_red);
} 

draw_text(room_width/2, 34, string(max(0, time) div 60)); // Alterado para desenhar o tempo no centro

// Reset color to white for other drawings
draw_set_color(c_white);

// Reset the drawRed variable
drawRed = false;








