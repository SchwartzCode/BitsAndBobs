import imageio.v2 as imageio

# add this inside plt loop with `.pause()`
plt.savefig(f"frame_{i:03d}.png")  # Save each frame as an image
frames.append(imageio.imread(f"frame_{i:03d}.png"))

# after the loop:
imageio.mimsave("path_animation2.gif", frames, fps=5)  # Convert images to GIF

