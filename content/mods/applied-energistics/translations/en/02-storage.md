# Terminals and digital storage

Storage Terminals connect containers, ME Drives read storage cells, and Wireless Storage Terminals provide remote access.

## Devices

| Device | Function |
| --- | --- |
| Storage Terminal | Accesses nearby available containers. Storage cannot be opened when no usable containers are available. |
| ME Drive | Holds three ME Storage Cells. |
| Wireless Storage Terminal | Accesses a bound Storage Terminal from a distance. |

## Storage cell capacities

| Cell | Maximum item types | Maximum total items |
| --- | --- | --- |
| 1k ME Storage Cell | 64 | 1,024 |
| 64k ME Storage Cell | 64 | 65,536 |
| 1m ME Storage Cell | 64 | 1,048,576 |

The type limit and total item limit are separate constraints. Larger cells hold more individual items, but all three sizes retain a limit of 64 types.

## Binding a wireless terminal

1. Pick up a Wireless Storage Terminal and use Bind on a Storage Terminal.
2. After the successful binding message, use the wireless terminal to access that storage.
3. If no containers are available, check the containers near the bound target. Bind again if the target terminal has been removed.

> Cross-world access requires a Distance Card in the target terminal and cross-world storage enabled in the world. Cross-world storage is experimental.
