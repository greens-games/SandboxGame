const std = @import("std");
const Game = @import("engine").game.Game;
const World = @import("engine").world;
const Entity = @import("engine").entity.Entity;

pub fn main() !void {
    var game: Game = .{};
    game.setUp().run();
    defer game.cleanUp();
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
