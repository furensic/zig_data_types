const std = @import("std");
const stdout = std.io.getStdOut().writer();

pub fn main() !void {
    try stdout.print("{s:^10} | {s:^40} | {s:<10} | {s:^40} | {s:<10} | {s:<8}\n", .{ "type", "max", "digits", "min", "digits", "bits" });
    try printTypeInfo(u8);
    try printTypeInfo(u16);
    try printTypeInfo(u32);
    try printTypeInfo(u64);
    try printTypeInfo(u128);
    try printTypeInfo(i8);
    try printTypeInfo(i16);
    try printTypeInfo(i32);
    try printTypeInfo(i64);
    try printTypeInfo(i128);
    try printTypeInfo(f16);
    try printTypeInfo(f32);
    try printTypeInfo(f64);
}

fn printTypeInfo(T: type) !void {
    const type_name = @typeName(T);
    const bits = @bitSizeOf(T);

    var max_value_string: [64]u8 = undefined;
    var min_value_string: [64]u8 = undefined;

    const type_info = @typeInfo(T);

    const max_slice: []u8 = switch (type_info) {
        .int => try std.fmt.bufPrint(&max_value_string, "{}", .{std.math.maxInt(T)}),
        .float => try std.fmt.bufPrint(&max_value_string, "{e}", .{std.math.floatMax(T)}),
        else => @compileError("Unsupported type"),
    };

    const min_slice: []u8 = switch (type_info) {
        .int => try std.fmt.bufPrint(&min_value_string, "{}", .{std.math.minInt(T)}),
        .float => try std.fmt.bufPrint(&min_value_string, "{e}", .{std.math.floatMin(T)}),
        else => @compileError("Unsupported type"),
    };

    // TODO: Add a column to display mantissa bits for float numbers
    try stdout.print("{s:^10} | {s:^40} (digits: {d:<2}) | {s:^40} (digits: {d:<2}) | {d:<8}\n", .{ type_name, max_slice, max_slice.len, min_slice, min_slice.len, bits });
}
