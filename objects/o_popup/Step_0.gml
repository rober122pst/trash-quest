// movimento + fade + pequena oscilação
vy += ay; // acelera um pouco
x += vx;
y += vy;

life -= 1;
alpha = clamp(life / max_life, 0, 1);

if life <= 0 {
    instance_destroy();
}
